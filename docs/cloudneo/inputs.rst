Inputs
=======

.. toctree::
   :maxdepth: 1

.. csv-table::
   :header: "**ID**", "**Label**", "**Type**", "Required", "Prefix", "Format"
   :widths: 50, 50, 50, 10, 10, 10

   input_bam,input_bam,File,Yes,BAM
   input_reference_file,input_reference_file,File,Yes,TAR.GZ
   input_file,input_file,File,Yes,VCF TXT
   input_database_file,input_database_file,File,Yes,FASTA
   input_allele_database,input_allele_database,File,Yes,fasta
   input_gtf,input_gtf_1,File,Yes,GTF
   input_csv,input_csv_1,File,Yes,CSV

**input_bam** 
  Input BAM file to call neoepitopes

**input_reference_file** 
  This is the Variant Effect Predictor reference file. This can be downloaded from the following link.  `homo_sapiens_vep_83_GRCh37.tar.gz <http://ftp.ensembl.org/pub/grch37/release-83/variation/VEP/homo_sapiens_vep_83_GRCh37.tar.gz>`_




**Variant Effect Predictor reference file** [homo_sapiens_vep_83_GRCh37.tar.gz](http://ftp.ensembl.org/pub/grch37/release-83/variation/VEP/homo_sapiens_vep_83_GRCh37.tar.gz).
* Hlaminer/IMGT database: [HLA-I_II_CDS.fasta](https://github.com/warrenlr/HLAminer/blob/master/HLAminer_v1.3.1/database/HLA-I_II_CDS.fasta). The reference files can be obtained from the [same link](https://github.com/warrenlr/HLAminer/tree/master/HLAminer_v1.3.1/database). (all files starting with HLA-I_II_CDS.* must be copied)

