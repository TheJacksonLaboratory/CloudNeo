.. CloudNeo documentation master file, created by
   sphinx-quickstart on Mon Mar 13 17:53:38 2017.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to CloudNeo's documentation!
====================================

CloudNeo: A cloud pipeline for identifying patient-specific tumor neoantigen. The workflow was developed on Seven Bridges Genomics' CGC platform.

.. image:: images/main.png
   :height: 300px
   :width: 600 px
   :scale: 100 %
   :alt: cloudneo main
   :align: center

Inputs
=======
.. csv-table::
   :header: "**ID**", "**Label**", "**Type**", "Required", "Prefix", "Format"
   :widths: 50, 50, 50, 10, 10, 10

   input_bam,input_bam,File,Yes,,BAM
   input_reference_file,input_reference_file,File,No,,TAR.GZ
   input_file,input_file,File,Yes,,VCF TXT
   input_database_file,input_database_file,File,No,,FASTA
   input_allele_database,input_allele_database,File,Yes,,fasta
   input_csv_1,input_csv_1,File,No,,
   input_gtf_1,input_gtf_1,File,No,,

App Settings
==============
.. csv-table::
   :header: "**ID**", "**Label**", "**Type**", "Required", "Prefix", "Default"
   :widths: 50, 50, 50, 50, 50, 50

    num_gap_extensions,maximum number of gap extensions,int,No,-e,0
    maximum_number_of_gap_opens,maximum number or fraction of gap opens,int,No,-o,0
    vcf,Output as VCF file,boolean,No,--vcf,FALSE
    html,HTML,boolean,No,--html,FALSE
    filter_common,Filter common,boolean,No,,FALSE
    minimum_score,,enum,No,-s,500
    label_run_name,,string,No,-l,
    bool_single_end_reads_used,bool,int,No,-e,1
    peptide_length,peptide_length,int,No,,9
    peptide_length_1,peptide_length,int,No,,9
    kmer_peptide_length,,int,No,,8

Outputs
==============
.. csv-table::
   :header: "**ID**", "**Label**", "**Type**", "Format"
   :widths: 50, 50, 50, 50

   predictions_file,predictions_file,File,
   html_summary,html_summary,File,HTML
   html_output,html_output,File,HTML
   vep_output,vep_output,File,"TEXT, JSON, VCF, GVF"
   output_vcf_file,output_vcf_file,File,VCF
   tumor_fasta_1,tumor_fasta_1,File,
   output_xls,output_xls,File,
   control_fasta_1,control_fasta_1,File,
   netmhcpan_outputs_xls_2,netmhcpan_outputs_xls_2,File array,
   netmhcpan_outputs_txt_2,netmhcpan_outputs_txt_2,File array,
   netmhcpan_outputs_xls,netmhcpan_outputs_xls,File array,
   netmhcpan_outputs_txt,netmhcpan_outputs_txt,File array,


Features
--------


Installation
------------


Contribute
----------

- Issue Tracker: https://github.com/TheJacksonLaboratory/CloudNeo/issues
- Source Code: https://github.com/TheJacksonLaboratory/CloudNeo

Support
-------

If you are having issues, please let us know. Post your issues at `CloudNeo Issues <https://github.com/TheJacksonLaboratory/CloudNeo/issues>`_.

License
-------

The project is licensed under the Apache License Version 2.0 (APLv2)
