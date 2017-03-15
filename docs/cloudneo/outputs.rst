Outputs
==============

.. toctree::
   :maxdepth: 1

.. csv-table::
   :header: "**ID**", "**Label**", "**Type**", "**Format**"
   :widths: 50, 50, 50, 50

   predictions_file,predictions_file,File,TXT
   html_summary,html_summary,File,HTML
   html_output,html_output,File,HTML
   vep_output,vep_output,File,"TEXT, JSON, VCF, GVF"
   output_vcf_file,output_vcf_file,File,VCF
   netmhcpan_outputs_xls,netmhcpan_outputs_xls,File array,XLS
   netmhcpan_outputs_txt,netmhcpan_outputs_txt,File array,TXT
   output_xls,output_xls,File,XLS
   control_fasta,control_fasta,File,FASTA
   tumor_fasta,tumor_fasta,File,FASTA

Outputs Details
----------------
**predictions_file**
  the output file from HLAminer

**html_summary**
  The HTML output summary file from Variant Effect Predictor

**vep_output**
  The VEP annotated output VCF file 

**output_vcf_file**
  Formatted VCF file as input to netmhcpan

**netmhcpan_outputs_xls**
  netmhcpan outputs in XLS format

**netmhcpan_outputs_txt**
  netmhcpan outputs in TXT format

**output_xls**
  Intermediary file from protein translator

**control_fasta**
  control file without the mutation (control Proteome)

**tumor_fasta**
  Fasta file with the mutation (tumor proteome)


 
