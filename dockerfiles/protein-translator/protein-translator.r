###########################################################################################################
# Build tumor proteome for TCGA data based on a script by Dan Gatti (JAX) da.gatti@jax.org for Mouse
# Preeti Bais, Preeti.Bais@jax.org  Feb 29, 2016
# Modifified by Dnaiel Gatti, April 1, 2016.
# Input files:  "Homo_sapiens.GRCh38.83.gtf", "HumanProteins_GRCm38.78_Modified.csv","inputvcffile.vcf"
# Output files: "TCGA-A1-A0SE_D_IlluminaGA-DNASeq_exome_excel_final.csv", "TCGA-A1-A0SE_D_IlluminaGA-DNASeq_exome_final.csv"
# Command Line Usage: Rscript TCGA_Proteome_SBG.r input.gtf input.csv input.vcf
# NOTE: We require taht the VCF contain ONLY SNPs and not indels or larger variants.  Also, we require
#       that each SNP have one and only one ALT allele.
##########################################################################################################
options(stringsAsFactors = F)
library(VariantAnnotation)
library(snpStats)
library(rtracklayer) 


## Create the Command Line Arguments ##
args = commandArgs(trailingOnly = TRUE)


#myGTF <- "Homo_sapiens.GRCh37.75.gtf"

myGTF <- args[1]
gtf <- import(myGTF) #pbais

# Load in the ensembl GTF. (object name = gtf)
exons = gtf[gtf$type == "CDS"]
rm(gtf)

# prot = read.csv("HumanProteins.GRCh37.75.csv")
prot = read.csv(args[2])

################
### SNPs #######
################

# Get the Sanger SNPs that intersect with the genes.
# Using Sanger version 4 SNPs.

#snpfile = "_3_DOw-baseline.sorted.rmdup.realign.fixmate.mutect.vep_NOCHAR.vcf"
snpfile <- args[3]


hdr = scanVcfHeader(snpfile)

# Synch up the genome and seqlevels.
exons = keepSeqlevels(exons, seqlevels(hdr))
genome(exons) = rep("hg19", length(genome(exons)))

  # Get all SNPs in the VCF.
  snps = readVcf(file = snpfile, genome = "hg19")

 
  idx <- GenomicRanges:::get_out_of_bound_index(snps)
  if (length(idx) != 0)
    snps <- snps[-idx]

  # Keep only SNPs that intersect with exons.
  snps = subsetByOverlaps(snps, exons)

  # Convert the genotypes to allele calls.
  snps = genotypeCodesToNucleotides(snps)

  # Remove SNPs with no consequence.
  csq  = info(snps)$CSQ
  keep = which(sapply(csq, length) > 0)
  snps = snps[keep]
  csq  = csq[keep]

  # Create a smaller data set.
  alt = as.character(unlist(fixed(snps)$ALT))
  snps = GRanges(seqnames = seqnames(snps), ranges = ranges(snps),
         mcols = cbind(ref = as.character(fixed(snps)$REF),
         alt = alt, SNPID = names(rowRanges(snps)),
         qual = fixed(snps)$FILTER, geno = geno(snps)$GT))
  colnames(mcols(snps)) = sub("^mcols\\.", "", colnames(mcols(snps)))

  snps$ref  = as.character(snps$ref)
  snps$alt  = as.character(snps$alt)
  snps$SNPID  = as.character(snps$SNPID)
  snps$qual = as.character(snps$qual)
  #snps$geno = as.character(snps$geno)

  # Convert the consequences into matrices.
  # NOTE: We're truncating the VCF columns to 20 because we don't need the rest.
  csq = lapply(csq, strsplit, split = "\\|")
  csq = lapply(csq, function(z) {
               z = lapply(z, "[", 1:20)
               matrix(unlist(z), ncol = length(z[[1]]), byrow = T)
        })

  # Get all of the unique variant effects.
  un = unique(unlist(sapply(csq, function(z) { z[,2] })))
  un = sort(unique(unlist(strsplit(un, split = "&"))))

  stopifnot(length(csq) == length(snps))

  result = matrix("", nrow = length(snps) * 10, ncol = 15, dimnames =
           list(NULL, c("chr", "pos", "ID", "REF", "ALT", "quality", "gene", "symbol",
          "transcript", "protein", "effect", "ProtPos", "REFAA", "ALTAA","PRIMARY")))

  idx = 1  # row index in result.

  for(j in 1:length(snps)) {

    # Keep only variants with AA changes that match the current allele.
    # Some SNPs will have two alleles.
    curr.csq = csq[[j]]
    curr.csq = curr.csq[curr.csq[,1] == snps$alt[j],,drop = FALSE]
    curr.csq = curr.csq[curr.csq[,16] != "",,drop = FALSE]  # Column 16 contains the AA change.
    curr.csq = curr.csq[grep("/", curr.csq[,16]),,drop = FALSE]

    print(paste(j, nrow(curr.csq)))

    # If all of the variants were synonymous, we won't have any consequences here.
    if(nrow(curr.csq) > 0) {

      for(k in 1:nrow(curr.csq)) {

        # Find the transcript in the protien sequences.
        cur.prot = prot[prot$transcript == curr.csq[k,7],]
        prot.pos = as.numeric(curr.csq[k,15]) # Column 15 is AA position in the protein.
        prot.aa = substring(cur.prot$seq, prot.pos, prot.pos)
        snp.aa = strsplit(curr.csq[k,16], split = "/")[[1]]

        # If we have a reference AA, then verify that it matches the protein sequence.
        # If we have a stop_lost ("*" as ref AA), then verify that the protein length
        # equals the variant protein position.
        if(snp.aa[1] == "*") {
          if(curr.csq[k,2] == "stop_lost") {
            stopifnot((prot.aa == "X" | prot.aa == "*") & snp.aa[1] == "*" |
                      nchar(cur.prot$seq) == as.numeric(curr.csq[k,15]) - 1)
          } else {
            stopifnot(nchar(cur.prot$seq) == as.numeric(curr.csq[k,15]) - 1 |
                      prot.aa == snp.aa[1])
          } # else
        } else if(snp.aa[1] == "X") {
          # DMG: I don't know how to handle this case.
          print("Got an X for AA.")
        } else {
          # Abort if the AA in the protein sequence does not equal the AA in the VCF file.
          #stopifnot(prot.aa == snp.aa[1] )
        } # else

        symbol = exons$gene_name[exons$gene_id == curr.csq[k,5]][1]

        result[idx,] = c(as.character(seqnames(snps)[j]), start(snps)[j], snps$SNPID[j],
                     snps$ref[j], snps$alt[j], snps$qual[j], curr.csq[k,5], symbol,
                     curr.csq[k,7],  cur.prot[1,1],curr.csq[k,8],curr.csq[k,15],
                     snp.aa, unlist(mcols(snps)[j, 5]))
        idx = idx + 1

      } # for(k)

    } # if(nrow(curr.csq) > 0)

  } # for(j)

  result = result[result[,1] != "",]


  colnames(prot)[1] <- "protein"
  result2 <- merge(result, prot[,c(1,4,5)] , by ="protein")
  result2[,1] <- 1:nrow(result2)
  colnames(result2)[1] <- "ProteinIndex"
  result3 <- result2

  mynmer <- args[7]
 # mynmer <- 7
  
  mynmernew <- as.numeric(mynmer)


  result2[["PSeq_Normal"]] <- paste(">Pr:",result2$ProteinIndex, "\n", substr(result2$seq, as.numeric(result2$ProtPos)-mynmernew, as.numeric(result2$ProtPos)+mynmernew), sep = "")

  result2[["PSeq_Primary"]] <- paste(">Pr:",result2$ProteinIndex, "\n", paste(substr(result2$seq, as.numeric(result2$ProtPos)-mynmernew, as.numeric(result2$ProtPos)-1),result2$ALTAA,
																													  substr(result2$seq, as.numeric(result2$ProtPos)+ 1, as.numeric(result2$ProtPos)+mynmernew),sep="" ),sep = "")

  save(result3, file = "protein_changes.Rdata")



# Read in all Chrs, filter out the synonymous variants and write the data
# out to one, big file.
files = dir(pattern = "Rdata$")
num = gsub("^protein_changes_chr|\\.Rdata$", "", files)
files = files[order(as.numeric(num))]
# files[20:22] = files[c(21,22,20)] # commented out because creating list of NA


## or use harcoded-names
exceloutfile  = args[4]
#exceloutfile <- "tempexcel.csv"
outfile1 = args[5]

#outfile1 <- "temppp1.fasta"
#outfile2 <- "temppp2.fasta"

outfile2 = args[6]
for(i in 1:length(files)) {

  load(files[i])
  dim(result2)
  #result = result[-grep("synonymous", result[,"effect"]),]
  print(paste(i,dim(result2)))

  # Set the no calls to "N/N".
  result2[,15:16][result2[,15:16] == "."] = "N/N"

   write.table(result2$PSeq_Normal, file = outfile1, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = ",")
   write.table(result2$PSeq_Primary, file = outfile2, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = ",")
  # Set the reference calls to ".".
  #ref = paste(result2[,"REF"], result2[,"REF"], sep = "/")
  #result2[,15:16][ref == result2[,15:16]] = "."

  write.table(result3, file = exceloutfile, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = ",")
} # for(i)
