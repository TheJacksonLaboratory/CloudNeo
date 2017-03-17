{
  "hints": [
    {
      "value": "r3.2xlarge",
      "class": "sbg:AWSInstanceType"
    }
  ],
  "cwlVersion": "sbg:draft-2",
  "sbg:id": "NAMBURIS1/neoepitope-analysis/Neoepitope-Analysis-Main/40",
  "outputs": [
    {
      "required": false,
      "id": "#predictions_file",
      "sbg:x": 1124.3335407707498,
      "label": "predictions_file",
      "sbg:y": -59.666640930704524,
      "source": [
        "#hlaminer.predictions_file"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "HTML",
      "required": false,
      "id": "#html_summary",
      "sbg:x": 490.0001720587476,
      "label": "html_summary",
      "sbg:y": 588.3335198693874,
      "source": [
        "#Variant_Effect_Predictor.html_summary"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "HTML",
      "required": false,
      "id": "#html_output",
      "sbg:x": 490.00021089448666,
      "label": "html_output",
      "sbg:y": 756.6668593618674,
      "source": [
        "#Variant_Effect_Predictor.html_output"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "TEXT, JSON, VCF, GVF",
      "required": false,
      "id": "#vep_output",
      "sbg:x": 503.3333829243993,
      "label": "vep_output",
      "sbg:y": 438.3275726898867,
      "source": [
        "#Variant_Effect_Predictor.vep_output"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "VCF",
      "required": false,
      "id": "#output_vcf_file",
      "sbg:x": 755.0002097951078,
      "label": "output_vcf_file",
      "sbg:y": 261.6666875282925,
      "source": [
        "#vcf_parser.output_vcf_file"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "XLS",
      "required": false,
      "id": "#netmhcpan_outputs_xls",
      "sbg:x": 1610.0000358687498,
      "label": "netmhcpan_outputs_xls",
      "sbg:y": 303.33334820800417,
      "source": [
        "#netmhcpan.netmhcpan_outputs_xls"
      ],
      "type": [
        "null",
        {
          "name": "netmhcpan_outputs_xls",
          "type": "array",
          "items": "File"
        }
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "TXT",
      "required": false,
      "id": "#netmhcpan_outputs_txt",
      "sbg:x": 1600.0002304448094,
      "label": "netmhcpan_outputs_txt",
      "sbg:y": 570.0000424649992,
      "source": [
        "#netmhcpan.netmhcpan_outputs_txt"
      ],
      "type": [
        "null",
        {
          "name": "netmhcpan_outputs_txt",
          "type": "array",
          "items": "File"
        }
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "XLS",
      "required": false,
      "id": "#output_xls",
      "sbg:x": 1215.000048279763,
      "label": "output_xls",
      "sbg:y": 730.0000508096496,
      "source": [
        "#protein_translator.output_xls"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "FASTA",
      "required": false,
      "id": "#control_fasta",
      "sbg:x": 1221.6667965915508,
      "label": "control_fasta",
      "sbg:y": 875.0001184013192,
      "source": [
        "#protein_translator.control_fasta"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    },
    {
      "sbg:fileTypes": "FASTA",
      "required": false,
      "id": "#tumor_fasta",
      "sbg:x": 1221.6666340960371,
      "label": "tumor_fasta",
      "sbg:y": 1008.3334158791458,
      "source": [
        "#protein_translator.tumor_fasta"
      ],
      "type": [
        "null",
        "File"
      ],
      "sbg:includeInPorts": true
    }
  ],
  "sbg:latestRevision": 40,
  "sbg:contributors": [
    "NAMBURIS1"
  ],
  "sbg:canvas_y": -11,
  "sbg:modifiedBy": "NAMBURIS1",
  "sbg:revision": 40,
  "description": "",
  "sbg:modifiedOn": 1489592149,
  "sbg:image_url": "https://cgc-brood.sbgenomics.com/static/NAMBURIS1/neoepitope-analysis/Neoepitope-Analysis-Main/40.png",
  "id": "https://cgc-api.sbgenomics.com/v2/apps/NAMBURIS1/neoepitope-analysis/Neoepitope-Analysis-Main/40/raw/",
  "sbg:canvas_x": 104,
  "steps": [
    {
      "hints": [
        {
          "value": "r3.2xlarge",
          "class": "sbg:AWSInstanceType"
        }
      ],
      "id": "#bwa_aln",
      "outputs": [
        {
          "id": "#bwa_aln.alignment_sai_file"
        }
      ],
      "sbg:x": 524.6667274766518,
      "inputs": [
        {
          "source": [
            "#num_gap_extensions"
          ],
          "id": "#bwa_aln.num_gap_extensions",
          "default": 0
        },
        {
          "source": [
            "#maximum_number_of_gap_opens"
          ],
          "id": "#bwa_aln.maximum_number_of_gap_opens"
        },
        {
          "source": [
            "#samtools_fastq.output_fastq"
          ],
          "id": "#bwa_aln.input_fastq"
        },
        {
          "source": [
            "#input_allele_database"
          ],
          "id": "#bwa_aln.input_database_fasta"
        }
      ],
      "run": {
        "hints": [
          {
            "value": 2,
            "class": "sbg:CPURequirement"
          },
          {
            "value": 2000,
            "class": "sbg:MemRequirement"
          },
          {
            "dockerPull": "bwa:cloudneo",
            "dockerImageId": "",
            "class": "DockerRequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "num_gap_extensions": 0,
            "input_fastq": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/input_fastq.ext",
              "class": "File"
            },
            "maximum_number_of_gap_opens": 0,
            "input_database_fasta": {
              "secondaryFiles": [
                {
                  "path": ".amb"
                },
                {
                  "path": ".ann"
                },
                {
                  "path": ".bwt"
                },
                {
                  "path": ".pac"
                },
                {
                  "path": ".sa"
                }
              ],
              "size": 0,
              "path": "/path/to/database_file.ext",
              "class": "File"
            }
          },
          "allocatedResources": {
            "mem": 2000,
            "cpu": 2
          }
        },
        "id": "gauravCGC/jax-sbg/bwa-aln/9",
        "outputs": [
          {
            "description": "aln_sa.sai",
            "outputBinding": {
              "glob": "*.sai",
              "sbg:inheritMetadataFrom": "#output_aln_sai_file"
            },
            "fileTypes": "SAI",
            "label": "aln_sa.sai",
            "type": [
              "null",
              "File"
            ],
            "id": "#alignment_sai_file"
          }
        ],
        "sbg:latestRevision": 9,
        "sbg:contributors": [
          "snamburi3"
        ],
        "sbg:modifiedBy": "snamburi3",
        "baseCommand": [
          "bwa",
          "aln"
        ],
        "successCodes": [],
        "stdout": {
          "engine": "#cwl-js-engine",
          "script": "{\n  \nfunction baseName(str)\n{\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n}\n  \n  filepath = $job.inputs.input_fastq.path;\n  filename = baseName(filepath);\n  extension = '.aln.sai';\n  return filename + extension\n}",
          "class": "Expression"
        },
        "description": "",
        "sbg:revision": 9,
        "sbg:modifiedOn": 1458689685,
        "sbg:image_url": null,
        "arguments": [],
        "sbg:id": "gauravCGC/jax-sbg/bwa-aln/9",
        "x": 524.6667274766518,
        "stdin": "",
        "sbg:project": "gauravCGC/jax-sbg",
        "sbg:validationErrors": [],
        "label": "bwa-aln",
        "sbg:createdOn": 1458653910,
        "inputs": [
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-e",
              "separate": true,
              "position": 0
            },
            "description": "maximum number of gap extensions, -1 for disabling long gaps [-1]",
            "id": "#num_gap_extensions",
            "label": "maximum number of gap extensions",
            "sbg:toolDefaultValue": "0",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-o",
              "separate": true,
              "position": 2
            },
            "description": "maximum number or fraction of gap opens [1]",
            "id": "#maximum_number_of_gap_opens",
            "label": "maximum number or fraction of gap opens",
            "sbg:toolDefaultValue": "0",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 4
            },
            "description": "in.fq",
            "required": true,
            "id": "#input_fastq",
            "label": "in.fq",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "FASTQ"
          },
          {
            "inputBinding": {
              "secondaryFiles": [
                ".amb",
                ".ann",
                ".bwt",
                ".pac",
                ".sa"
              ],
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 3
            },
            "description": "in.db.fasta",
            "required": true,
            "id": "#input_database_fasta",
            "label": "in.db.fasta",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "fasta"
          }
        ],
        "sbg:sbgMaintained": false,
        "y": -139.33333080344718,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458653910
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458656027
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458663077
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458663448
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458673485
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1458680461
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1458681114
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1458681826
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1458682914
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1458689685
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:createdBy": "snamburi3",
        "requirements": [
          {
            "requirements": [
              {
                "dockerPull": "rabix/js-engine",
                "class": "DockerRequirement"
              }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
          }
        ],
        "sbg:cmdPreview": "bwa aln  /path/to/database_file.ext  /path/to/input_fastq.ext > input_fastq.aln.sai"
      },
      "sbg:y": -139.33333080344718
    },
    {
      "hints": [
        {
          "value": "r3.2xlarge",
          "class": "sbg:AWSInstanceType"
        }
      ],
      "id": "#bwa_sampe",
      "outputs": [
        {
          "id": "#bwa_sampe.output_sam_file"
        }
      ],
      "sbg:x": 694.6667552391716,
      "inputs": [
        {
          "source": [
            "#bwa_aln.alignment_sai_file"
          ],
          "id": "#bwa_sampe.input_sai_file"
        },
        {
          "source": [
            "#samtools_fastq.output_fastq"
          ],
          "id": "#bwa_sampe.input_fastq_file"
        },
        {
          "source": [
            "#input_allele_database"
          ],
          "id": "#bwa_sampe.input_database_fasta"
        }
      ],
      "run": {
        "hints": [
          {
            "value": 4,
            "class": "sbg:CPURequirement"
          },
          {
            "value": 4000,
            "class": "sbg:MemRequirement"
          },
          {
            "dockerPull": "bwa:cloudneo",
            "dockerImageId": "",
            "class": "DockerRequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "input_fastq_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "test.fastq",
              "class": "File"
            },
            "input_database_fasta": {
              "secondaryFiles": [
                {
                  "path": ".amb"
                },
                {
                  "path": ".ann"
                },
                {
                  "path": ".bwt"
                },
                {
                  "path": ".pac"
                },
                {
                  "path": ".sa"
                }
              ],
              "size": 0,
              "path": "test.fasta",
              "class": "File"
            },
            "input_sai_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "test.sai",
              "class": "File"
            }
          },
          "allocatedResources": {
            "mem": 4000,
            "cpu": 4
          }
        },
        "id": "gauravCGC/jax-sbg/bwa-sampe/4",
        "outputs": [
          {
            "description": "output SAM file",
            "outputBinding": {
              "glob": "*.sam"
            },
            "fileTypes": "SAM",
            "label": "out.sam",
            "type": [
              "null",
              "File"
            ],
            "id": "#output_sam_file"
          }
        ],
        "sbg:latestRevision": 4,
        "sbg:contributors": [
          "snamburi3"
        ],
        "sbg:modifiedBy": "snamburi3",
        "baseCommand": [
          "bwa",
          "samse"
        ],
        "successCodes": [],
        "stdout": {
          "engine": "#cwl-js-engine",
          "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_fastq_file.path\n  //inputfile = inputfile.replace(/\\.[^/.]+$/, \"\")\n  inputfile = baseName(inputfile)\n  extension = '.sam'\n  return inputfile + extension\n}",
          "class": "Expression"
        },
        "description": "",
        "sbg:revision": 4,
        "sbg:modifiedOn": 1458741567,
        "sbg:image_url": null,
        "arguments": [],
        "sbg:id": "gauravCGC/jax-sbg/bwa-sampe/4",
        "x": 694.6667552391716,
        "stdin": "",
        "sbg:project": "gauravCGC/jax-sbg",
        "sbg:validationErrors": [],
        "label": "bwa-sampe",
        "sbg:createdOn": 1458683106,
        "inputs": [
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 2
            },
            "description": "input sai file",
            "required": true,
            "id": "#input_sai_file",
            "label": "input sai file",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "SAI"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 3
            },
            "description": "input fastq",
            "required": true,
            "id": "#input_fastq_file",
            "label": "in.fq",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "fastq, FASTQ"
          },
          {
            "inputBinding": {
              "secondaryFiles": [
                ".amb",
                ".ann",
                ".bwt",
                ".pac",
                ".sa"
              ],
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 1
            },
            "description": "in.db.fasta",
            "required": true,
            "id": "#input_database_fasta",
            "label": "in.db.fasta",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "fasta, FASTA"
          }
        ],
        "sbg:sbgMaintained": false,
        "y": 51.33335387706819,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458684305
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458683106
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458689572
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458690442
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458741567
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:createdBy": "snamburi3",
        "requirements": [
          {
            "requirements": [
              {
                "dockerPull": "rabix/js-engine",
                "class": "DockerRequirement"
              }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
          }
        ],
        "sbg:cmdPreview": "bwa samse  test.fasta  test.sai  test.fastq > test.sam"
      },
      "sbg:y": 51.33335387706819
    },
    {
      "hints": [
        {
          "value": "r3.2xlarge",
          "class": "sbg:AWSInstanceType"
        }
      ],
      "id": "#Variant_Effect_Predictor",
      "outputs": [
        {
          "id": "#Variant_Effect_Predictor.vep_output"
        },
        {
          "id": "#Variant_Effect_Predictor.html_summary"
        },
        {
          "id": "#Variant_Effect_Predictor.html_output"
        }
      ],
      "sbg:x": 205.00020651023394,
      "inputs": [
        {
          "id": "#Variant_Effect_Predictor.xref_refseq"
        },
        {
          "id": "#Variant_Effect_Predictor.vcf_info_field_other"
        },
        {
          "id": "#Variant_Effect_Predictor.vcf_info_field"
        },
        {
          "source": [
            "#vcf"
          ],
          "id": "#Variant_Effect_Predictor.vcf"
        },
        {
          "id": "#Variant_Effect_Predictor.variant_class"
        },
        {
          "id": "#Variant_Effect_Predictor.uniprot"
        },
        {
          "id": "#Variant_Effect_Predictor.tsl"
        },
        {
          "id": "#Variant_Effect_Predictor.total_length"
        },
        {
          "id": "#Variant_Effect_Predictor.terms"
        },
        {
          "id": "#Variant_Effect_Predictor.symbol"
        },
        {
          "id": "#Variant_Effect_Predictor.summary"
        },
        {
          "source": [
            "#input_reference_file"
          ],
          "id": "#Variant_Effect_Predictor.species_cache_file"
        },
        {
          "id": "#Variant_Effect_Predictor.species"
        },
        {
          "id": "#Variant_Effect_Predictor.sift"
        },
        {
          "id": "#Variant_Effect_Predictor.shift_hgvs"
        },
        {
          "id": "#Variant_Effect_Predictor.regulatory"
        },
        {
          "id": "#Variant_Effect_Predictor.refseq"
        },
        {
          "id": "#Variant_Effect_Predictor.pubmed"
        },
        {
          "id": "#Variant_Effect_Predictor.protein"
        },
        {
          "id": "#Variant_Effect_Predictor.polyphen"
        },
        {
          "id": "#Variant_Effect_Predictor.pick_order"
        },
        {
          "id": "#Variant_Effect_Predictor.pick_allele"
        },
        {
          "id": "#Variant_Effect_Predictor.pick"
        },
        {
          "id": "#Variant_Effect_Predictor.phased"
        },
        {
          "id": "#Variant_Effect_Predictor.per_gene"
        },
        {
          "id": "#Variant_Effect_Predictor.old_maf"
        },
        {
          "id": "#Variant_Effect_Predictor.numbers"
        },
        {
          "id": "#Variant_Effect_Predictor.number_of_cpus"
        },
        {
          "id": "#Variant_Effect_Predictor.no_whole_genome"
        },
        {
          "id": "#Variant_Effect_Predictor.no_stats"
        },
        {
          "id": "#Variant_Effect_Predictor.no_intergenic"
        },
        {
          "id": "#Variant_Effect_Predictor.no_escape"
        },
        {
          "id": "#Variant_Effect_Predictor.most_severe"
        },
        {
          "id": "#Variant_Effect_Predictor.minimal"
        },
        {
          "id": "#Variant_Effect_Predictor.merged"
        },
        {
          "id": "#Variant_Effect_Predictor.memory_for_job"
        },
        {
          "id": "#Variant_Effect_Predictor.maf_exac"
        },
        {
          "id": "#Variant_Effect_Predictor.maf_esp"
        },
        {
          "id": "#Variant_Effect_Predictor.maf_1kg"
        },
        {
          "id": "#Variant_Effect_Predictor.loftee_plugin"
        },
        {
          "id": "#Variant_Effect_Predictor.loftee_min_intron_size"
        },
        {
          "id": "#Variant_Effect_Predictor.loftee_human_ancestor_fa"
        },
        {
          "id": "#Variant_Effect_Predictor.loftee_filter_position"
        },
        {
          "id": "#Variant_Effect_Predictor.loftee_fast_length_calculation"
        },
        {
          "id": "#Variant_Effect_Predictor.loftee_conservation_file"
        },
        {
          "id": "#Variant_Effect_Predictor.keep_csq"
        },
        {
          "id": "#Variant_Effect_Predictor.json"
        },
        {
          "source": [
            "#input_file"
          ],
          "id": "#Variant_Effect_Predictor.input_file"
        },
        {
          "id": "#Variant_Effect_Predictor.individual"
        },
        {
          "id": "#Variant_Effect_Predictor.humdiv"
        },
        {
          "source": [
            "#html"
          ],
          "id": "#Variant_Effect_Predictor.html"
        },
        {
          "id": "#Variant_Effect_Predictor.hgvs"
        },
        {
          "id": "#Variant_Effect_Predictor.gvf"
        },
        {
          "id": "#Variant_Effect_Predictor.gmaf"
        },
        {
          "id": "#Variant_Effect_Predictor.gene_phenotype"
        },
        {
          "id": "#Variant_Effect_Predictor.gencode_basic"
        },
        {
          "id": "#Variant_Effect_Predictor.freq_pop"
        },
        {
          "id": "#Variant_Effect_Predictor.freq_gt_lt"
        },
        {
          "id": "#Variant_Effect_Predictor.freq_freq"
        },
        {
          "id": "#Variant_Effect_Predictor.freq_filter"
        },
        {
          "id": "#Variant_Effect_Predictor.format"
        },
        {
          "id": "#Variant_Effect_Predictor.fork"
        },
        {
          "id": "#Variant_Effect_Predictor.force_overwrite"
        },
        {
          "id": "#Variant_Effect_Predictor.flag_pick_allele"
        },
        {
          "id": "#Variant_Effect_Predictor.flag_pick"
        },
        {
          "source": [
            "#filter_common"
          ],
          "id": "#Variant_Effect_Predictor.filter_common"
        },
        {
          "id": "#Variant_Effect_Predictor.fields"
        },
        {
          "id": "#Variant_Effect_Predictor.fasta"
        },
        {
          "id": "#Variant_Effect_Predictor.failed"
        },
        {
          "id": "#Variant_Effect_Predictor.everything"
        },
        {
          "id": "#Variant_Effect_Predictor.dont_skip"
        },
        {
          "id": "#Variant_Effect_Predictor.domains"
        },
        {
          "id": "#Variant_Effect_Predictor.custom"
        },
        {
          "id": "#Variant_Effect_Predictor.convert"
        },
        {
          "id": "#Variant_Effect_Predictor.coding_only"
        },
        {
          "id": "#Variant_Effect_Predictor.chr"
        },
        {
          "id": "#Variant_Effect_Predictor.check_ref"
        },
        {
          "id": "#Variant_Effect_Predictor.check_existing"
        },
        {
          "id": "#Variant_Effect_Predictor.check_alleles"
        },
        {
          "id": "#Variant_Effect_Predictor.cell_type"
        },
        {
          "id": "#Variant_Effect_Predictor.ccds"
        },
        {
          "id": "#Variant_Effect_Predictor.canonical"
        },
        {
          "id": "#Variant_Effect_Predictor.buffer_size"
        },
        {
          "id": "#Variant_Effect_Predictor.biotype"
        },
        {
          "id": "#Variant_Effect_Predictor.assembly"
        },
        {
          "id": "#Variant_Effect_Predictor.appris"
        },
        {
          "id": "#Variant_Effect_Predictor.allow_non_variant"
        },
        {
          "id": "#Variant_Effect_Predictor.allele_number"
        },
        {
          "id": "#Variant_Effect_Predictor.all_refseq"
        }
      ],
      "run": {
        "hints": [
          {
            "dockerPull": "variant-effect-predictor:cloudneo",
            "dockerImageId": "",
            "class": "DockerRequirement"
          },
          {
            "value": {
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.number_of_cpus>0)\n  \treturn $job.inputs.number_of_cpus\n  else\n    return 8\n}",
              "class": "Expression"
            },
            "class": "sbg:CPURequirement"
          },
          {
            "value": {
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.memory_for_job>0)\n  \treturn $job.inputs.memory_for_job\n  else\n    return 15000\n}",
              "class": "Expression"
            },
            "class": "sbg:MemRequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "failed": "Include",
            "number_of_cpus": 6,
            "most_severe": true,
            "numbers": true,
            "xref_refseq": true,
            "flag_pick": true,
            "gvf": true,
            "summary": true,
            "tsl": true,
            "keep_csq": true,
            "appris": true,
            "loftee_min_intron_size": 100,
            "sift": null,
            "gencode_basic": true,
            "old_maf": true,
            "memory_for_job": 0,
            "check_existing": true,
            "check_ref": true,
            "refseq": true,
            "convert": "ensembl",
            "loftee_human_ancestor_fa": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/loftee_human_ancestor_fa.ext",
              "class": "File"
            },
            "species": "species-string-value",
            "canonical": true,
            "freq_filter": "exclude",
            "hgvs": true,
            "ccds": true,
            "maf_exac": true,
            "no_stats": false,
            "format": "format-string-value",
            "loftee_filter_position": 5,
            "filter_common": true,
            "loftee_conservation_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/conservation_file.ext",
              "class": "File"
            },
            "variant_class": true,
            "terms": "ensembl",
            "gene_phenotype": true,
            "check_alleles": true,
            "assembly": "GRCh37",
            "maf_esp": true,
            "no_intergenic": true,
            "json": true,
            "merged": true,
            "fork": 4,
            "per_gene": true,
            "freq_pop": "freq_pop-string-value",
            "loftee_fast_length_calculation": "slow",
            "domains": true,
            "vcf": false,
            "phased": true,
            "dont_skip": true,
            "humdiv": true,
            "pubmed": true,
            "input_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/input_file.ext",
              "class": "File"
            },
            "custom": [
              {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/custom-1.ext",
                "class": "File"
              },
              {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/custom-2.ext",
                "class": "File"
              }
            ],
            "coding_only": true,
            "freq_freq": 0.4662053742977994,
            "all_refseq": true,
            "force_overwrite": true,
            "maf_1kg": true,
            "allow_non_variant": true,
            "no_whole_genome": true,
            "biotype": true,
            "vcf_info_field": "Other",
            "uniprot": true,
            "pick_allele": true,
            "pick": true,
            "vcf_info_field_other": "Ojsa",
            "allele_number": true,
            "freq_gt_lt": "Greater than freq_freq",
            "buffer_size": 3,
            "gmaf": true,
            "no_escape": true,
            "pick_order": "canonical",
            "cell_type": null,
            "fields": [
              "fields-string-value-1",
              "fields-string-value-2"
            ],
            "species_cache_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/species_cache_file.ext",
              "class": "File"
            },
            "regulatory": true,
            "chr": [
              "chr-string-value-1",
              "chr-string-value-2"
            ],
            "minimal": true,
            "fasta": [
              {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/fasta-1.ext",
                "class": "File"
              },
              {
                "secondaryFiles": [],
                "size": 0,
                "path": "/path/to/fasta-2.ext",
                "class": "File"
              }
            ],
            "shift_hgvs": "Disable",
            "protein": true,
            "symbol": true,
            "individual": [
              "individual-string-value-1",
              "individual-string-value-2"
            ],
            "everything": true,
            "flag_pick_allele": true,
            "total_length": true,
            "polyphen": null,
            "html": true,
            "loftee_plugin": true
          },
          "allocatedResources": {
            "mem": 15000,
            "cpu": 6
          }
        },
        "id": "gauravCGC/jax-sbg/variant-effect-predictor-83/0",
        "arguments": [
          {
            "prefix": "--dir",
            "separate": true,
            "position": 1,
            "valueFrom": "/opt/variant_effect_predictor_83/cache"
          },
          {
            "valueFrom": "--offline",
            "separate": true,
            "position": 1
          },
          {
            "valueFrom": {
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.loftee_plugin && $job.inputs.loftee_conservation_file){\n    var command=\"--plugin LoF,conservation_file:\"+$job.inputs.loftee_conservation_file.path;\n    if($job.inputs.loftee_human_ancestor_fa)\n      command+=\",human_ancestor_fa:\"+$job.inputs.loftee_human_ancestor_fa.path;\n    if($job.inputs.loftee_filter_position)\n      command+=\",filter_position:\"+$job.inputs.loftee_filter_position;\n    if($job.inputs.loftee_min_intron_size)\n      command+=\",min_intron_size:\"+$job.inputs.loftee_min_intron_size;\n    if($job.inputs.loftee_fast_length_calculation==\"slow\")\n      command+=\",fast_length_calculation:slow\";\n    if($job.inputs.loftee_check_complete_cds)\n      command+=\",check_comlete_cds\";\n    return command;\n  }\n}",
              "class": "Expression"
            },
            "separate": true,
            "position": 100
          },
          {
            "prefix": "--output_file",
            "separate": true,
            "position": 1,
            "valueFrom": {
              "engine": "#cwl-js-engine",
              "script": "{\n  var fileName=$job.inputs.input_file.path.replace(/^.*[\\\\\\/]/, '');\n  fileName=fileName.substr(0,fileName.lastIndexOf(\".\"));\n  if($job.inputs.vcf)\n    return fileName+\".vep.vcf\";\n  else if($job.inputs.json)\n    return fileName+\".vep.json\";\n  else if($job.inputs.gvf)\n    return fileName+\".vep.gvf\";\n  else \n    return fileName+\".vep.txt\";\n}",
              "class": "Expression"
            }
          },
          {
            "prefix": "",
            "separate": true,
            "position": 1,
            "valueFrom": {
              "engine": "#cwl-js-engine",
              "script": "{\n  if(!$job.inputs.no_stats){\n  \tvar fileName=$job.inputs.input_file.path.replace(/^.*[\\\\\\/]/, '');\n    fileName=fileName.substr(0,fileName.lastIndexOf(\".\"));\n  \tif($job.inputs.vcf)\n      return \"--stats_file \"+fileName+\".vep.vcf_summary.html\";\n    else if($job.inputs.json)\n      return \"--stats_file \"+fileName+\".vep.json_summary.html\";\n    else if($job.inputs.gvf)\n      return \"--stats_file \"+fileName+\".vep.gvf_summary.html\";\n    else \n      return \"--stats_file \"+fileName+\".vep.txt_summary.html\";\n  }\n  else return \"\";\n}",
              "class": "Expression"
            }
          },
          {
            "prefix": "",
            "separate": true,
            "position": 1,
            "valueFrom": {
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.assembly==\"GRCh37\" || $job.inputs.assembly==\"grch37\")\n    return \"--port 3337\";\n}",
              "class": "Expression"
            }
          }
        ],
        "sbg:latestRevision": 0,
        "sbg:contributors": [
          "snamburi3"
        ],
        "sbg:modifiedBy": "snamburi3",
        "baseCommand": [
          "tar",
          "xfz",
          {
            "engine": "#cwl-js-engine",
            "script": "$job.inputs.species_cache_file.path",
            "class": "Expression"
          },
          "-C",
          "/opt/variant_effect_predictor_83/cache",
          "&&",
          "perl",
          "/opt/variant_effect_predictor_83/ensembl-tools-release-83/scripts/variant_effect_predictor/variant_effect_predictor.pl",
          "",
          "",
          "",
          ""
        ],
        "sbg:revision": 0,
        "sbg:toolkitVersion": "83",
        "successCodes": [],
        "stdout": "",
        "description": "The VEP determines the effect of your variants (SNPs, insertions, deletions, CNVs or structural variants) on genes, transcripts, and protein sequence, as well as regulatory regions. Using it, you can find out the:\n\n* genes and transcripts affected by the variants\n\n* location of the variants (e.g. upstream of a transcript, in coding sequence, in non-coding RNA, in regulatory regions)\n\n* consequence of your variants on the protein sequence (e.g. stop gained, missense, stop lost, frameshift)\n\n* known variants that match yours, and associated minor allele frequencies from the 1000 Genomes Project\n\n* SIFT and PolyPhen scores for changes to protein sequence\n\n**Important note:** This tool is always working in offline mode, meaning that you will have to provide species cache file and you will not be able to establish any database connection. In addition, features (parameters) that require database connection were not added to the platform. Unpacking archived cache files is included in the tool.",
        "sbg:modifiedOn": 1458162487,
        "sbg:categories": [
          "VCF-Processing",
          "Annotation"
        ],
        "stdin": "",
        "outputs": [
          {
            "label": "VEP output file",
            "sbg:fileTypes": "TEXT, JSON, VCF, GVF",
            "id": "#vep_output",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "{*.vep.vcf,*.vep.json,*.vep.gvf,*.vep.txt}",
              "sbg:inheritMetadataFrom": "#input_file"
            }
          },
          {
            "label": "HTML summary file",
            "sbg:fileTypes": "HTML",
            "id": "#html_summary",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "{*.vep.vcf_summary.html,*.vep.json_summary.html,*.vep.gvf_summary.html,*.vep.txt_summary.html}"
            }
          },
          {
            "sbg:fileTypes": "HTML",
            "description": "Works only when output is in \"default\" (text) format. Doesn't work for VCF output.",
            "id": "#html_output",
            "label": "HTML output file",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "{*.vep.vcf.html,*.vep.json.html,*.vep.gvf.html,*.vep.txt.html}"
            }
          }
        ],
        "sbg:license": "Apache License 2.0",
        "sbg:toolkit": "ensembl-tools",
        "sbg:id": "gauravCGC/jax-sbg/variant-effect-predictor-83/0",
        "sbg:copyOf": "djordje_klisic/public-apps-by-seven-bridges/variant-effect-predictor-83/42",
        "sbg:image_url": null,
        "x": 205.00020651023394,
        "sbg:project": "gauravCGC/jax-sbg",
        "sbg:validationErrors": [],
        "label": "Variant Effect Predictor",
        "sbg:createdOn": 1458162487,
        "inputs": [
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--xref_refseq",
              "separate": true,
              "position": 1
            },
            "description": "Output aligned RefSeq mRNA identifier for transcript. NB: theRefSeq and Ensembl transcripts aligned in this way MAY NOT, AND FREQUENTLY WILL NOT, match exactly in sequence, exon structure and protein product.",
            "id": "#xref_refseq",
            "sbg:category": "Identifiers",
            "label": "Xref refseq",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "label": "VCF info field (other)",
            "description": "If you selected \"other\" for VCF info field please enter name here.",
            "id": "#vcf_info_field_other",
            "type": [
              "null",
              "string"
            ],
            "sbg:category": "Output options (VCF Info)"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--vcf_info_field",
              "separate": true,
              "position": 1,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  if($job.inputs.vcf_info_field==\"Other\")\n  \treturn $job.inputs.vcf_info_field_other;\n  else if($job.inputs.vcf_info_field==\"ANN\")\n    return \"ANN\";\n}",
                "class": "Expression"
              }
            },
            "description": "Change the name of the INFO key that VEP write the consequences to in its VCF output. Use \"ANN\" for compatibility with other tools such as snpEff.",
            "id": "#vcf_info_field",
            "sbg:category": "Output options (VCF Info)",
            "label": "VCF info field",
            "sbg:toolDefaultValue": "CSQ",
            "type": [
              "null",
              {
                "symbols": [
                  "CSQ",
                  "ANN",
                  "Other"
                ],
                "name": "vcf_info_field",
                "type": "enum"
              }
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--vcf",
              "separate": true,
              "position": 1
            },
            "description": "Writes output in VCF format. Consequences are added in the INFO field of the VCF file, using the key \"CSQ\". Data fields are encoded separated by \"|\"; the order of fields is written in the VCF header. Output fields can be selected by using --fields.  If the input format was VCF, the file will remain unchanged save for the addition of the CSQ field (unless using any filtering).  Custom data added with --custom are added as separate fields, using the key specified for each data file.  Commas in fields are replaced with ampersands (&) to preserve VCF format.",
            "id": "#vcf",
            "sbg:category": "Data format options",
            "label": "Output as VCF file",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--variant_class",
              "separate": true,
              "position": 1
            },
            "description": "Output the Sequence Ontology variant class.",
            "id": "#variant_class",
            "sbg:category": "Output options",
            "label": "Variant class",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--uniprot",
              "separate": true,
              "position": 1
            },
            "description": "Adds identifiers for translated protein products from three UniProt-related databases (SWISSPROT, TREMBL and UniParc) to the output.",
            "id": "#uniprot",
            "sbg:category": "Identifiers",
            "label": "UniProt",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--tsl",
              "separate": true,
              "position": 1
            },
            "description": "Adds the transcript support level for this transcript to the output.",
            "id": "#tsl",
            "sbg:category": "Identifiers",
            "label": "TSL",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--total_length",
              "separate": true,
              "position": 1
            },
            "description": "Give cDNA, CDS and protein positions as Position/Length.",
            "id": "#total_length",
            "sbg:category": "Output options",
            "label": "Total length",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--terms",
              "separate": true,
              "position": 1
            },
            "description": "The type of consequence terms to output.  The Sequence Ontology is a joint effort by genome annotation centres to standardise descriptions of biological sequences.",
            "id": "#terms",
            "sbg:category": "Output options",
            "label": "Terms",
            "sbg:toolDefaultValue": "SO",
            "type": [
              "null",
              {
                "symbols": [
                  "ensembl",
                  "so"
                ],
                "name": "terms",
                "type": "enum"
              }
            ],
            "sbg:altPrefix": "-t"
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--symbol",
              "separate": true,
              "position": 1
            },
            "description": "Adds the gene symbol (e.g. HGNC) (where available) to the output.",
            "id": "#symbol",
            "sbg:category": "Identifiers",
            "label": "Symbol",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--summary",
              "separate": true,
              "position": 1
            },
            "description": "Output only a comma-separated list of all observed consequences per variation. Transcript-specific columns will be left blank.",
            "id": "#summary",
            "sbg:category": "Filtering and QC options",
            "label": "Summary",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "description": "Cache file for the chosen species (including refseq). You can find these cache files on ftp://ftp.ensembl.org/pub/release-83/variation/VEP/.",
            "required": true,
            "id": "#species_cache_file",
            "sbg:category": "Input options",
            "label": "Species Cache File",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "TAR.GZ"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--species",
              "separate": true,
              "position": 0
            },
            "description": "Species for your data. This can be the latin name e.g. \"homo_sapiens\" or any Ensembl alias e.g. \"mouse\". Specifying the latin name can speed up initial database connection as the registry does not have to load all available database aliases on the server.",
            "id": "#species",
            "sbg:category": "Input options",
            "label": "Species for your data",
            "sbg:toolDefaultValue": "homo_sapiens",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--sift",
              "separate": true,
              "position": 1,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  var sift = $job.inputs.sift;\n  \n  var options = {\n    \"Prediction term\": \"p\",\n    \"Score\": \"s\",\n    \"Both\": \"b\",\n  }\n  \n  if (sift && sift != \"None\"){\n    return options[sift]\n  }\n}",
                "class": "Expression"
              }
            },
            "description": "Species limited SIFT predicts whether an amino acid substitution affects protein function based on sequence homology and the physical properties of amino acids. The VEP can output the prediction term, score or both.",
            "id": "#sift",
            "sbg:category": "Output options",
            "label": "Sift",
            "sbg:toolDefaultValue": "none",
            "type": [
              "null",
              {
                "symbols": [
                  "Prediction term",
                  "Score",
                  "Both",
                  "None"
                ],
                "name": "sift",
                "type": "enum"
              }
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--shift_hgvs",
              "separate": true,
              "position": 1,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{var shift = $job.inputs.shift_hgvs;\n  \n  if (shift && shift==\"Disable\"){\n    return \"0\";\n  }\n}",
                "class": "Expression"
              }
            },
            "description": "Enable or disable 3' shifting of HGVS notations. When enabled, this causes ambiguous insertions or deletions (typically in repetetive sequence tracts) to be \"shifted\" to their most 3' possible coordinates (relative to the transcript sequence and strand) before the HGVS notations are calculated; the flag HGVS_OFFSET is set to the number of bases by which the variant has shifted, relative to the input genomic coordinates. Disabling retains the original input coordinates of the variant.",
            "id": "#shift_hgvs",
            "sbg:category": "Identifiers",
            "label": "Shift HGVS",
            "sbg:toolDefaultValue": "Enable",
            "type": [
              "null",
              {
                "symbols": [
                  "Enable",
                  "Disable"
                ],
                "name": "shift_hgvs",
                "type": "enum"
              }
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--regulatory",
              "separate": true,
              "position": 1
            },
            "description": "Look for overlaps with regulatory regions. The script can also call if a variant falls in a high information position within a transcription factor binding site. Output lines have a Feature type of RegulatoryFeature or MotifFeature.",
            "id": "#regulatory",
            "sbg:category": "Output options",
            "label": "Regulatory",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--refseq",
              "separate": true,
              "position": 1
            },
            "description": "Instead of using the core database, use the otherfeatures database to retrieve transcripts. This database contains transcript objects corresponding to RefSeq transcripts (to include CCDS and Ensembl ESTs also, use --all_refseq). Consequence output will be given relative to these transcripts in place of the default Ensembl transcripts (see documentation)  You should also specify this option if you have installed the RefSeq cache in order for the VEP to pick up the alternate cache directory.",
            "id": "#refseq",
            "sbg:category": "Database options",
            "label": "Refseq",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--pubmed",
              "separate": true,
              "position": 1
            },
            "description": "Report Pubmed IDs for publications that cite existing variant. Must be used with --cache",
            "id": "#pubmed",
            "sbg:category": "Co-located variants",
            "label": "Pubmed",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--protein",
              "separate": true,
              "position": 1
            },
            "description": "Add the Ensembl protein identifier to the output where appropriate.",
            "id": "#protein",
            "sbg:category": "Identifiers",
            "label": "Protein",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--polyphen",
              "separate": true,
              "position": 1,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  var polyphen = $job.inputs.polyphen;\n  \n  var options = {\n    \"Prediction term\": \"p\",\n    \"Score\": \"s\",\n    \"Both\": \"b\",\n  }\n  \n  if (polyphen && polyphen != \"None\"){\n    return options[polyphen]\n  }\n}",
                "class": "Expression"
              }
            },
            "description": "Human only PolyPhen is a tool which predicts possible impact of an amino acid substitution on the structure and function of a human protein using straightforward physical and comparative considerations. The VEP can output the prediction term, score or both. The VEP uses the humVar score by default - use --humdiv to retrieve the humDiv score.",
            "id": "#polyphen",
            "sbg:category": "Output options",
            "label": "Polyphen",
            "sbg:toolDefaultValue": "None",
            "type": [
              "null",
              {
                "symbols": [
                  "Prediction term",
                  "Score",
                  "Both"
                ],
                "name": "polyphen",
                "type": "enum"
              }
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--pick_order",
              "separate": true,
              "position": 1
            },
            "description": "Customise the order of criteria applied when choosing a block of annotation data with e.g. --pick.",
            "id": "#pick_order",
            "sbg:category": "Filtering and QC options",
            "label": "Pick order",
            "type": [
              "null",
              {
                "symbols": [
                  "canonical",
                  "appris",
                  "tsl",
                  "biotype",
                  "ccds",
                  "rank",
                  "length"
                ],
                "name": "pick_order",
                "type": "enum"
              }
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--pick_allele",
              "separate": true,
              "position": 1
            },
            "description": "Like --pick, but chooses one line or block of consequence data per variant allele. Will only differ in behaviour from --pick when the input variant has multiple alternate alleles.",
            "id": "#pick_allele",
            "label": "Pick allele",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--pick",
              "separate": true,
              "position": 1
            },
            "description": "Pick once line or block of consequence data per variant, including transcript-specific columns. Consequences are chosen according to the criteria described here, and the order the criteria are applied may be customised with --pick_order. This is the best method to use if you are interested only in one consequence per variant.",
            "id": "#pick",
            "sbg:category": "Filtering and QC options",
            "label": "Pick",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--phased",
              "separate": true,
              "position": 1
            },
            "description": "Force VCF genotypes to be interpreted as phased. For use with plugins that depend on phased data.",
            "id": "#phased",
            "sbg:category": "Output options",
            "label": "Phased",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--per_gene",
              "separate": true,
              "position": 1
            },
            "description": "Output only the most severe consequence per gene. The transcript selected is arbitrary if more than one has the same predicted consequence. Uses the same ranking system as --pick.",
            "id": "#per_gene",
            "sbg:category": "Filtering and QC options",
            "label": "Per gene",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--old_maf",
              "separate": true,
              "position": 1
            },
            "description": "For --maf_1kg and --maf_esp report only the frequency (no allele) and convert this frequency so it is always a minor frequency, i.e. < 0.5",
            "id": "#old_maf",
            "sbg:category": "Co-located variants",
            "label": "Old MAF",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--numbers",
              "separate": true,
              "position": 1
            },
            "description": "Adds affected exon and intron numbering to to output. Format is Number/Total.",
            "id": "#numbers",
            "sbg:category": "Output options",
            "label": "Numbers",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "description": "Number of CPUs to use for execution.",
            "id": "#number_of_cpus",
            "sbg:category": "Other options",
            "label": "Number of CPUs to use",
            "sbg:toolDefaultValue": "8",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--no_whole_genome",
              "separate": true,
              "position": 1
            },
            "description": "Force the script to run in non-whole-genome mode. This was the original default mode for the VEP script, but has now been superceded by whole-genome mode, which is the default. In this mode, variants are analysed one at a time, with no caching of transcript data.",
            "id": "#no_whole_genome",
            "sbg:category": "Advanced options",
            "label": "No whole genome",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--no_stats",
              "separate": true,
              "position": 1
            },
            "description": "Don't generate a stats file.",
            "id": "#no_stats",
            "sbg:category": "Input options",
            "label": "No stats",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--no_intergenic",
              "separate": true,
              "position": 1
            },
            "description": "Do not include intergenic consequences in the output.",
            "id": "#no_intergenic",
            "sbg:category": "Filtering and QC options",
            "label": "No intergenic",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--no_escape",
              "separate": true,
              "position": 1
            },
            "description": "Don't URI escape HGVS strings.",
            "id": "#no_escape",
            "sbg:category": "Output options",
            "label": "No escape",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--most_severe",
              "separate": true,
              "position": 1
            },
            "description": "Output only the most severe consequence per variation. Transcript-specific columns will be left blank.",
            "id": "#most_severe",
            "sbg:category": "Filtering and QC options",
            "label": "Most severe",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--minimal",
              "separate": true,
              "position": 1
            },
            "description": "Convert alleles to their most minimal representation before consequence calculation i.e. sequence that is identical between each pair of reference and alternate alleles is trimmed off from both ends, with coordinates adjusted accordingly. Note this may lead to discrepancies between input coordinates and coordinates reported by the VEP relative to transcript sequences; to avoid issues, use --allele_number and/or ensure that your input variants have unique identifiers. The MINIMISED flag is set in the VEP output where relevant.",
            "id": "#minimal",
            "sbg:category": "Data format options",
            "label": "Minimal",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--merged",
              "separate": true,
              "position": 1
            },
            "description": "Use the merged Ensembl and RefSeq cache. Consequences are flagged with the SOURCE of each transcript used.",
            "id": "#merged",
            "sbg:category": "Database options",
            "label": "Merged",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "description": "Assign memory for the execution in MB.",
            "id": "#memory_for_job",
            "sbg:category": "Other options",
            "label": "Memory for job",
            "sbg:toolDefaultValue": "15000",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--maf_exac",
              "separate": true,
              "position": 1
            },
            "description": "Include allele frequency from ExAC project populations. Note the reported allele(s) and frequencies are for the non-reference allele from the originial data, not necessarily the alternate allele from user input. Must be used with --cache",
            "id": "#maf_exac",
            "sbg:category": "Co-located variants",
            "label": "MAF ExAC",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--maf_esp",
              "separate": true,
              "position": 1
            },
            "description": "Include allele frequency from NHLBI-ESP populations. Note the reported allele(s) and frequencies are for the non-reference allele from the originial data, not necessarily the alternate allele from user input. Must be used with --cache.",
            "id": "#maf_esp",
            "sbg:category": "Co-located variants",
            "label": "MAF ESP",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--maf_1kg",
              "separate": true,
              "position": 1
            },
            "description": "Add allele frequency from continental populations (AFR,AMR,ASN,EUR) of 1000 Genomes Phase 1 to the output. Note the reported allele(s) and frequencies are for the non-reference allele from the original data, not necessarily the alternate allele from user input. Must be used with --cache",
            "id": "#maf_1kg",
            "sbg:category": "Co-located variants",
            "label": "MAF 1Kg",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "description": "A VEP plugin to identify LoF (loss-of-function) variation.",
            "id": "#loftee_plugin",
            "sbg:category": "LOFTEE plugin",
            "label": "LOFTEE plugin",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "description": "Minimum intron size, below which a variant should be filtered.",
            "id": "#loftee_min_intron_size",
            "sbg:category": "LOFTEE plugin",
            "label": "LOFTEE minimum intron size",
            "sbg:toolDefaultValue": "15",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "secondaryFiles": [
                ".fai",
                ".gzi"
              ]
            },
            "description": "samtools 1.x uses bgzipped inputs for samtools faidx and downloads are available here: https://s3.amazonaws.com/bcbio_nextgen/human_ancestor.fa.gz, https://s3.amazonaws.com/bcbio_nextgen/human_ancestor.fa.gz.fai, https://s3.amazonaws.com/bcbio_nextgen/human_ancestor.fa.gz.gzi. If this flag is set to 'false', the ancestral allele will not be checked and filtered.",
            "required": false,
            "id": "#loftee_human_ancestor_fa",
            "sbg:category": "LOFTEE plugin",
            "label": "LOFTEE human ancestor FA",
            "type": [
              "null",
              "File"
            ],
            "sbg:fileTypes": "FA.GZ"
          },
          {
            "sbg:stageInput": null,
            "description": "Position in transcript where a variant should be filtered. Default is 0.05, corresponding to last 5% of transcript.",
            "id": "#loftee_filter_position",
            "sbg:category": "LOFTEE plugin",
            "label": "LOFTEE filter position",
            "sbg:toolDefaultValue": "0.05",
            "type": [
              "null",
              "float"
            ]
          },
          {
            "sbg:stageInput": null,
            "description": "The Ensembl API can be used to calculate transcript length in two different methods: one approximate (fast; usually within 3 bp of correct length) and one perfect (slow).",
            "id": "#loftee_fast_length_calculation",
            "sbg:category": "LOFTEE plugin",
            "label": "LOFTEE fast length calculation",
            "sbg:toolDefaultValue": "fast",
            "type": [
              "null",
              {
                "symbols": [
                  "fast",
                  "slow"
                ],
                "name": "loftee_fast_length_calculation",
                "type": "enum"
              }
            ]
          },
          {
            "description": "Conservation database for LOFTEE plugin.",
            "required": false,
            "id": "#loftee_conservation_file",
            "sbg:category": "LOFTEE plugin",
            "label": "LOFTEE Conservation File",
            "type": [
              "null",
              "File"
            ],
            "sbg:fileTypes": "SQL"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--keep_csq",
              "separate": true,
              "position": 1
            },
            "description": "Don't overwrite existing CSQ entry in VCF INFO field.",
            "id": "#keep_csq",
            "sbg:category": "Output options",
            "label": "Keep CSQ",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--json",
              "separate": true,
              "position": 1
            },
            "description": "Write output in JSON format.",
            "id": "#json",
            "sbg:category": "Data format options",
            "label": "Output as JSON file",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--input_file",
              "separate": true,
              "position": 0
            },
            "description": "Input file name. If not specified, the script will attempt to read from STDIN.",
            "required": true,
            "id": "#input_file",
            "sbg:category": "Input options",
            "label": "Input file name",
            "sbg:altPrefix": "-i",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "VCF TXT"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "itemSeparator": null,
              "prefix": "--individual",
              "separate": true,
              "position": 1
            },
            "description": "Consider only alternate alleles present in the genotypes of the specified individual(s). May be a single individual, a comma-separated list or \"all\" to assess all individuals separately. Individual variant combinations homozygous for the given reference allele will not be reported. Each individual and variant combination is given on a separate line of output. Only works with VCF files containing individual genotype data; individual IDs are taken from column headers.",
            "id": "#individual",
            "sbg:category": "Output options",
            "label": "Individual",
            "type": [
              "null",
              {
                "name": "individual",
                "type": "array",
                "items": "string"
              }
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--humdiv",
              "separate": true,
              "position": 1
            },
            "description": "Human only Retrieve the humDiv PolyPhen prediction instead of the defaulat humVar.",
            "id": "#humdiv",
            "sbg:category": "Output options",
            "label": "Humdiv",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--html",
              "separate": true,
              "position": 1
            },
            "description": "Generate an additional HTML version of the output file containing hyperlinks to Ensembl and other resources. File name of this file is [output_file].html. In order for this feature to work properly you will have to set VEP's to \"default\" (text) format and place that output in the same folder as this HTML file.",
            "id": "#html",
            "label": "HTML",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--hgvs",
              "separate": true,
              "position": 1
            },
            "description": "Add HGVS nomenclature based on Ensembl stable identifiers to the output. Both coding and protein sequence names are added where appropriate. To generate HGVS identifiers when using --cache or --offline you must use a FASTA file and --fasta.",
            "id": "#hgvs",
            "sbg:category": "Identifiers",
            "label": "HGVS",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--gvf",
              "separate": true,
              "position": 1
            },
            "description": "Writes output in GVF format.",
            "id": "#gvf",
            "sbg:category": "Data format options",
            "label": "Output as GVF file",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--gmaf",
              "separate": true,
              "position": 1
            },
            "description": "Add the global minor allele frequency (MAF) from 1000 Genomes Phase 1 data for any existing variant to the output.",
            "id": "#gmaf",
            "label": "GMAF",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--gene_phenotype",
              "separate": true,
              "position": 1
            },
            "description": "Indicates if the overlapped gene is associated with a phenotype, disease or trait. See list of phenotype sources.",
            "id": "#gene_phenotype",
            "sbg:category": "Output options",
            "label": "Gene phenotype",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--gencode_basic",
              "separate": true,
              "position": 1
            },
            "description": "Limit your analysis to transcripts belonging to the GENCODE basic set. This set has fragmented or problematic transcripts removed.",
            "id": "#gencode_basic",
            "sbg:category": "Database options",
            "label": "Gencode basic",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--freq_pop",
              "separate": true,
              "position": 1
            },
            "description": "Turns on frequency filtering. Use this to include or exclude variants based on the frequency of co-located existing variants in the Ensembl Variation database. You must also specify all of the --freq flags below. Using this option requires a database connection - while it can be used with --cache, the database will still be accessed to retrieve frequency data. Frequencies used in filtering are added to the output under the FREQS key in the Extra field. 1kg_all - 1000 genomes combined population (global); 1kg_afr - 1000 genomes combined African populations (also amr, asn, eur); 1kg_chb - 1000 genomes CHB population; hapmap_yri - HapMap YRI population; 1kg - Any 1000 genomes phase 1 population; ceu - Any of HapMap or 1000 genomes CEU populations; any - Any HapMap or 1000 genomes population.",
            "id": "#freq_pop",
            "sbg:category": "Filtering and QC options",
            "label": "Frequency population",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--freq_gt_lt",
              "separate": true,
              "position": 1,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  var option=$job.inputs.freq_gt_lt;\n  if(option==\"Greater than freq_freq\")\n    return \"gt\";\n  else if(option==\"Less than freq_freq\")\n    return \"lt\";\n}",
                "class": "Expression"
              }
            },
            "description": "Specify whether the frequency of the co-located variant must be greater than (gt) or less than (lt) the value specified with --freq_freq",
            "id": "#freq_gt_lt",
            "sbg:category": "Filtering and QC options",
            "label": "Frequency GT/LT",
            "type": [
              "null",
              {
                "symbols": [
                  "Greater than freq_freq",
                  "Less than freq_freq"
                ],
                "name": "freq_gt_lt",
                "type": "enum"
              }
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--freq_freq",
              "separate": true,
              "position": 1
            },
            "description": "Minor allele frequency to use for filtering. Must be a float value between 0 and 0.5.",
            "id": "#freq_freq",
            "sbg:category": "Filtering and QC options",
            "label": "Freq freq",
            "type": [
              "null",
              "float"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--freq_filter",
              "separate": true,
              "position": 1
            },
            "description": "Specify whether to exclude or include only variants that pass the frequency filter",
            "id": "#freq_filter",
            "sbg:category": "Filtering and QC options",
            "label": "Freq filter",
            "type": [
              "null",
              {
                "symbols": [
                  "exclude",
                  "include"
                ],
                "name": "freq_filter",
                "type": "enum"
              }
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--format",
              "separate": true,
              "position": 1
            },
            "description": "Input file format - one of \"ensembl\", \"vcf\", \"pileup\", \"hgvs\", \"id\". By default, the script auto-detects the input file format. Using this option you can force the script to read the input file as Ensembl, VCF, pileup or HGVS format, a list of variant identifiers (e.g. rsIDs from dbSNP), or the output from the VEP (e.g. to add custom annotation to an existing results file using --custom).",
            "id": "#format",
            "sbg:category": "Input options",
            "label": "Format",
            "sbg:toolDefaultValue": "Auto-detects",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--fork",
              "separate": true,
              "position": 1
            },
            "description": "Enable forking, using the specified number of forks. Forking can dramatically improve the runtime of the script.",
            "id": "#fork",
            "sbg:category": "Basic options",
            "label": "Fork",
            "sbg:toolDefaultValue": "1",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--force_overwrite",
              "separate": true,
              "position": 1
            },
            "description": "By default, the script will fail with an error if the output file already exists. You can force the overwrite of the existing file by using this flag.",
            "id": "#force_overwrite",
            "sbg:category": "Input options",
            "label": "Force overwrite",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:altPrefix": "--force"
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--flag_pick_allele",
              "separate": true,
              "position": 1
            },
            "description": "As per --pick_allele, but adds the PICK flag to the chosen block of consequence data and retains others.",
            "id": "#flag_pick_allele",
            "sbg:category": "Filtering and QC options",
            "label": "Flag pick allele",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--flag_pick",
              "separate": true,
              "position": 1
            },
            "description": "As per --pick, but adds the PICK flag to the chosen block of consequence data and retains others.",
            "id": "#flag_pick",
            "sbg:category": "Filtering and QC options",
            "label": "Flag pick",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--filter_common",
              "separate": true,
              "position": 1
            },
            "description": "Shortcut flag for the filters - this will exclude variants that have a co-located existing variant with global MAF > 0.01 (1%). May be modified using any of the following freq_* filters. For human, this can be used in offline mode for the following populations: 1KG_ALL, 1KG_AFR, 1KG_AMR, 1KG_ASN, 1KG_EUR.",
            "id": "#filter_common",
            "sbg:category": "Filtering and QC options",
            "label": "Filter common",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "itemSeparator": ",",
              "prefix": "--fields",
              "separate": true,
              "position": 1
            },
            "description": "Configure the output format using a comma separated list of fields. Fields may be those present in the default output columns, or any of those that appear in the Extra column (including those added by plugins or custom annotations). Output remains tab-delimited.",
            "id": "#fields",
            "sbg:category": "Data format options",
            "label": "Fields",
            "type": [
              "null",
              {
                "name": "fields",
                "type": "array",
                "items": "string"
              }
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "itemSeparator": null,
              "prefix": "--fasta",
              "separate": true,
              "position": 0
            },
            "description": "Specify a FASTA file or a directory containing FASTA files to use to look up reference sequence. The first time you run the script with this parameter an index will be built which can take a few minutes. This is required if fetching HGVS annotations (--hgvs) or checking reference sequences (--check_ref) in offline mode (--offline), and optional with some performance increase in cache mode (--cache).",
            "required": false,
            "id": "#fasta",
            "sbg:category": "Cache options",
            "label": "Fasta file(s) to use to look up reference sequence",
            "type": [
              "null",
              {
                "name": "fasta",
                "type": "array",
                "items": "File"
              }
            ],
            "sbg:fileTypes": "FASTA, FA"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--failed",
              "separate": true,
              "position": 1,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  var failed=$job.inputs.failed;\n  if(failed && failed==\"Include\")\n    return \"1\";\n}",
                "class": "Expression"
              }
            },
            "description": "When checking for co-located variants, by default the script will exclude variants that have been flagged as failed. Set this flag to include such variants.",
            "id": "#failed",
            "sbg:category": "Co-located variants",
            "label": "Failed",
            "sbg:toolDefaultValue": "Exclude",
            "type": [
              "null",
              {
                "symbols": [
                  "Exclude",
                  "Include"
                ],
                "name": "failed",
                "type": "enum"
              }
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--everything",
              "separate": true,
              "position": 1
            },
            "description": "Shortcut flag to switch on all of the following:  --sift b, --polyphen b, --ccds, --uniprot, --hgvs, --symbol, --numbers, --domains, --regulatory, --canonical, --protein, --biotype, --uniprot, --tsl, --appris, --gene_phenotype --gmaf, --maf_1kg, --maf_esp, --maf_esp, --pubmed, --variant_class",
            "id": "#everything",
            "sbg:category": "Basic options",
            "label": "Everything",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--dont_skip",
              "separate": true,
              "position": 1
            },
            "description": "Don't skip input variants that fail validation, e.g. those that fall on unrecognised sequences.",
            "id": "#dont_skip",
            "sbg:category": "Input options",
            "label": "Dont skip",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--domains",
              "separate": true,
              "position": 1
            },
            "description": "Adds names of overlapping protein domains to output.",
            "id": "#domains",
            "sbg:category": "Output options",
            "label": "Domains",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "itemSeparator": null,
              "prefix": "--custom",
              "separate": true,
              "position": 1
            },
            "description": "Add custom annotation to the output. Files must be tabix indexed or in the bigWig format. Multiple files can be specified by supplying the --custom flag multiple times. See here for full details.",
            "required": false,
            "id": "#custom",
            "sbg:category": "Output options",
            "label": "Custom annotations files",
            "type": [
              "null",
              {
                "name": "custom",
                "type": "array",
                "items": "File"
              }
            ],
            "sbg:fileTypes": "BED,GFF,GTF,VCF,bigWig"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--convert",
              "separate": true,
              "position": 1
            },
            "description": "Converts the input file to the specified format (one of \"ensembl\", \"vcf\", \"pileup\"). See documentation for more details. Converted output is written to the file specified with --output_file.",
            "id": "#convert",
            "sbg:category": "Data format options",
            "label": "Convert",
            "type": [
              "null",
              {
                "symbols": [
                  "ensembl",
                  "vcf",
                  "pileup"
                ],
                "name": "convert",
                "type": "enum"
              }
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--coding_only",
              "separate": true,
              "position": 1
            },
            "description": "Only return consequences that fall in the coding regions of transcripts.",
            "id": "#coding_only",
            "sbg:category": "Filtering and QC options",
            "label": "Coding only",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "itemSeparator": ",",
              "prefix": "--chr",
              "separate": true,
              "position": 1
            },
            "description": "Select a subset of chromosomes to analyse from your file. Any data not on this chromosome in the input will be skipped. The list can be comma separated, with \"-\" characters representing an interval. For example, to include chromsomes 1, 2, 3, 10 and X you could use --chr 1-3,10,X",
            "id": "#chr",
            "sbg:category": "Filtering and QC options",
            "label": "Chromosomes",
            "type": [
              "null",
              {
                "name": "chr",
                "type": "array",
                "items": "string"
              }
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--check_ref",
              "separate": true,
              "position": 1
            },
            "description": "Force the script to check the supplied reference allele against the sequence stored in the Ensembl Core database. Lines that do not match are skipped.",
            "id": "#check_ref",
            "sbg:category": "Filtering and QC options",
            "label": "Check ref",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--check_existing",
              "separate": true,
              "position": 1
            },
            "description": "Checks for the existence of known variants that are co-located with your input. By default the alleles are not compared - to do so, use --check_alleles.",
            "id": "#check_existing",
            "sbg:category": "Co-located variants",
            "label": "Check existing",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--check_alleles",
              "separate": true,
              "position": 1
            },
            "description": "When checking for existing variants, only report a co-located variant if none of the alleles supplied are novel. For example, if the user input has alleles A/G, and an existing co-located variant has alleles A/C, the co-located variant will not be reported.  Strand is also taken into account - in the same example, if the user input has alleles T/G but on the negative strand, then the co-located variant will be reported since its alleles match the reverse complement of user input.",
            "id": "#check_alleles",
            "sbg:category": "Co-located variants",
            "label": "Check alleles",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--cell_type",
              "separate": true,
              "position": 1
            },
            "description": "Report only regulatory regions that are found in the given cell type(s). Can be a single cell type or a comma-separated list. The functional type in each cell type is reported under CELL_TYPE in the output. To retrieve a list of cell types, use --cell_type list.",
            "id": "#cell_type",
            "sbg:category": "Output options",
            "label": "Cell type",
            "type": [
              "null",
              {
                "symbols": [
                  "HeLa-S3",
                  "GM06990",
                  "U2OS",
                  "CD4",
                  "IMR90",
                  "HL-60",
                  "HepG2",
                  "Lymphoblastoid",
                  "CD133",
                  "CD36",
                  "K562",
                  "GM12878",
                  "HUVEC",
                  "NHEK",
                  "H1ESC",
                  "MultiCell",
                  "K562b",
                  "NH-A",
                  "HSMM",
                  "HMEC",
                  "A549",
                  "AG04449",
                  "AG04450",
                  "AG09309",
                  "AG09319",
                  "AG10803",
                  "Caco-2",
                  "Chorion",
                  "CMK",
                  "GM10847",
                  "GM12801",
                  "GM12864",
                  "GM12865,GM12872,GM12873,GM12874,GM12875,GM12891,GM12892,GM15510,GM18505,GM18507,GM18526,GM18951,GM19099,GM19193,GM19238,GM19239,GM19240,H7ESC,H9ESC,HAEpiC,HCF,HCM,HCPEpiC,HCT116,HEEpiC,HEK293b,HEK293,HepG2b,HGF,HIPEpiC,HNPCEpiC,HRCEpiC,HRE,HRPEpiC,Jurkat,LHSR,MCF7,Medullo,Melano,NB4,NHBE,NHDF-neo",
                  "NHLF",
                  "NT2-D1",
                  "Panc1",
                  "PanIslets",
                  "PFSK1",
                  "SAEC",
                  "SKMC",
                  "SKNMC",
                  "SKNSHRA",
                  "Th1",
                  "Th2",
                  "WERIRB1",
                  "RPTEC",
                  "ProgFib",
                  "HSMMtube",
                  "Osteobl",
                  "MCF10A-Er-Src",
                  "HPAEpiC",
                  "Fibrobl",
                  "GM12878-XiMat",
                  "BJ",
                  "NHDF-AD",
                  "Monocytes-CD14+",
                  "DND-41"
                ],
                "name": "cell_type",
                "type": "enum"
              }
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--ccds",
              "separate": true,
              "position": 1
            },
            "description": "Adds the CCDS transcript identifer (where available) to the output.",
            "id": "#ccds",
            "sbg:category": "Identifiers",
            "label": "CCDS",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--canonical",
              "separate": true,
              "position": 1
            },
            "description": "Adds a flag indicating if the transcript is the canonical transcript for the gene.",
            "id": "#canonical",
            "sbg:category": "Identifiers",
            "label": "Canonical",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--buffer_size",
              "separate": true,
              "position": 1
            },
            "description": "Sets the internal buffer size, corresponding to the number of variations that are read in to memory simultaneously. Set this lower to use less memory at the expense of longer run time, and higher to use more memory with a faster run time.",
            "id": "#buffer_size",
            "sbg:category": "Advanced options",
            "label": "Buffer size",
            "sbg:toolDefaultValue": "5000",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--biotype",
              "separate": true,
              "position": 1
            },
            "description": "Adds the biotype of the transcript or regulatory feature.",
            "id": "#biotype",
            "sbg:category": "Identifiers",
            "label": "Biotype",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--assembly",
              "separate": true,
              "position": 0
            },
            "description": "Select the assembly version to use if more than one available. If using the cache, you must have the appropriate assembly's cache file installed. If not specified and you have only 1 assembly version installed, this will be chosen by default. For homo sapiens use either GRCh38 or GRCh37.",
            "id": "#assembly",
            "sbg:category": "Input options",
            "label": "Assembly version",
            "sbg:toolDefaultValue": "Use found assembly version",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--appris",
              "separate": true,
              "position": 1
            },
            "description": "Adds the APPRIS isoform annotation for this transcript to the output.",
            "id": "#appris",
            "label": "APPRIS",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--allow_non_variant",
              "separate": true,
              "position": 1
            },
            "description": "When using VCF format as input and output, by default the VEP will skip non-variant lines of input (where the ALT allele is null). Enabling this option the lines will be printed in the VCF output with no consequence data added.",
            "id": "#allow_non_variant",
            "sbg:category": "Filtering and QC options",
            "label": "Allow non variant",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--allele_number",
              "separate": true,
              "position": 1
            },
            "description": "Identify allele number from VCF input, where 1 = first ALT allele, 2 = second ALT allele etc.",
            "id": "#allele_number",
            "sbg:category": "Output options",
            "label": "Allele number",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "--all_refseq",
              "separate": true,
              "position": 1
            },
            "description": "When using the RefSeq or merged cache, include e.g. CCDS and Ensembl EST transcripts in addition to those from RefSeq (see documentation). Only works when using --refseq or --merged",
            "id": "#all_refseq",
            "sbg:category": "Database options",
            "label": "All refseq",
            "sbg:toolDefaultValue": "False",
            "type": [
              "null",
              "boolean"
            ]
          }
        ],
        "sbg:toolAuthor": "McLaren et. al.",
        "sbg:sbgMaintained": false,
        "y": 405.00025012758994,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458162487
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:links": [
          {
            "label": "Homepage",
            "id": "http://uswest.ensembl.org/info/docs/tools/vep/index.html"
          },
          {
            "label": "Source Code",
            "id": "https://github.com/Ensembl/ensembl-tools/tree/release/83/scripts/variant_effect_predictor"
          },
          {
            "label": "Wiki",
            "id": "https://en.wikipedia.org/wiki/Ensembl_Genomes#Variant_Effect_Predictor"
          },
          {
            "label": "Download",
            "id": "https://github.com/Ensembl/ensembl-tools/archive/release/83.zip"
          },
          {
            "label": "Publication",
            "id": "http://www.ncbi.nlm.nih.gov/pubmed/20562413"
          },
          {
            "label": "Documentation",
            "id": "http://uswest.ensembl.org/info/docs/tools/vep/script/index.html?redirect=no#contents"
          },
          {
            "label": "Cache files",
            "id": "ftp://ftp.ensembl.org/pub/release-83/variation/VEP/"
          }
        ],
        "sbg:createdBy": "snamburi3",
        "requirements": [
          {
            "requirements": [
              {
                "dockerPull": "rabix/js-engine",
                "class": "DockerRequirement"
              }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
          }
        ],
        "sbg:cmdPreview": "tar xfz /path/to/species_cache_file.ext -C /opt/variant_effect_predictor_83/cache && perl /opt/variant_effect_predictor_83/ensembl-tools-release-83/scripts/variant_effect_predictor/variant_effect_predictor.pl     --input_file /path/to/input_file.ext --dir /opt/variant_effect_predictor_83/cache  --offline --output_file input_file.vep.json  --stats_file input_file.vep.json_summary.html  --port 3337  --plugin LoF,conservation_file:/path/to/conservation_file.ext,human_ancestor_fa:/path/to/loftee_human_ancestor_fa.ext,filter_position:5,min_intron_size:100,fast_length_calculation:slow"
      },
      "sbg:y": 405.00025012758994
    },
    {
      "hints": [
        {
          "value": "r3.2xlarge",
          "class": "sbg:AWSInstanceType"
        }
      ],
      "id": "#hlaminer",
      "outputs": [
        {
          "id": "#hlaminer.predictions_file"
        }
      ],
      "sbg:x": 904.0004631678438,
      "inputs": [
        {
          "source": [
            "#minimum_score"
          ],
          "id": "#hlaminer.minimum_score"
        },
        {
          "source": [
            "#label_run_name"
          ],
          "id": "#hlaminer.label_run_name"
        },
        {
          "source": [
            "#bwa_sampe.output_sam_file"
          ],
          "id": "#hlaminer.input_sam_file"
        },
        {
          "source": [
            "#input_allele_database"
          ],
          "id": "#hlaminer.input_allele_database"
        },
        {
          "source": [
            "#bool_single_end_reads_used"
          ],
          "id": "#hlaminer.bool_single_end_reads_used"
        }
      ],
      "run": {
        "hints": [
          {
            "value": 1000,
            "class": "sbg:MemRequirement"
          },
          {
            "dockerPull": "hlaminer:cloudneo",
            "dockerImageId": "",
            "class": "DockerRequirement"
          },
          {
            "value": 2,
            "class": "sbg:CPURequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "minimum_score": "500",
            "input_allele_database": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/input_database_file.ext",
              "class": "File"
            },
            "label_run_name": "label_run_name-string-value",
            "input_sam_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/sam_alignments_file.ext",
              "class": "File"
            },
            "bool_single_end_reads_used": 7
          },
          "allocatedResources": {
            "mem": 1000,
            "cpu": 2
          }
        },
        "id": "gauravCGC/jax-sbg/hlaminer/15",
        "outputs": [
          {
            "id": "#predictions_file",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.csv"
            }
          }
        ],
        "sbg:latestRevision": 15,
        "sbg:contributors": [
          "snamburi3"
        ],
        "sbg:modifiedBy": "snamburi3",
        "baseCommand": [
          "/usr/local/bin/HLAminer_v1.3/bin/HLAminer.pl"
        ],
        "successCodes": [],
        "stdout": "",
        "description": "",
        "sbg:revision": 15,
        "sbg:modifiedOn": 1460227007,
        "sbg:image_url": null,
        "arguments": [],
        "sbg:id": "gauravCGC/jax-sbg/hlaminer/15",
        "x": 904.0004631678438,
        "stdin": "",
        "sbg:project": "gauravCGC/jax-sbg",
        "sbg:validationErrors": [],
        "label": "hlaminer",
        "sbg:createdOn": 1458067676,
        "inputs": [
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-s",
              "separate": true,
              "position": 2
            },
            "description": "minimum score",
            "id": "#minimum_score",
            "sbg:toolDefaultValue": "500",
            "type": [
              "null",
              {
                "symbols": [
                  "500"
                ],
                "name": "minimum_score",
                "type": "enum"
              }
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-l",
              "separate": true,
              "position": 2
            },
            "id": "#label_run_name",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-a",
              "separate": true,
              "position": 1
            },
            "description": "sam alignments file",
            "required": true,
            "id": "#input_sam_file",
            "label": "input.sam",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "SAM"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "itemSeparator": null,
              "prefix": "-h",
              "separate": true,
              "position": 3
            },
            "description": "hlaminer fasta file",
            "required": true,
            "id": "#input_allele_database",
            "label": "database.fasta",
            "sbg:toolDefaultValue": "/usr/local/bin/HLAminer_v1.3/database/HLA-I_II_GEN.fasta",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "FASTA"
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-e",
              "separate": true,
              "position": 5
            },
            "description": "single-end reads used (1=yes/0=no)",
            "id": "#bool_single_end_reads_used",
            "label": "bool",
            "sbg:toolDefaultValue": "1",
            "type": [
              "null",
              "int"
            ]
          }
        ],
        "sbg:sbgMaintained": false,
        "y": 177.33342169391116,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458269612
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458067676
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458067682
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458138684
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458139414
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1458685026
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1458684831
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1458705428
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1458738766
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1458748258
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1458755110
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1458755135
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1458755105
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1458755763
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 14,
            "sbg:modifiedOn": 1458766142
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 15,
            "sbg:modifiedOn": 1460227007
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:createdBy": "snamburi3",
        "requirements": [],
        "sbg:cmdPreview": "/usr/local/bin/HLAminer_v1.3/bin/HLAminer.pl -a /path/to/sam_alignments_file.ext -h /path/to/input_database_file.ext"
      },
      "sbg:y": 177.33342169391116
    },
    {
      "hints": [
        {
          "value": "r3.2xlarge",
          "class": "sbg:AWSInstanceType"
        }
      ],
      "id": "#samtools_fastq",
      "outputs": [
        {
          "id": "#samtools_fastq.output_fastq"
        }
      ],
      "sbg:x": 134.33337738779005,
      "inputs": [
        {
          "source": [
            "#input_bam"
          ],
          "id": "#samtools_fastq.input_bam"
        }
      ],
      "run": {
        "hints": [
          {
            "dockerPull": "samtools:cloudneo",
            "dockerImageId": "",
            "class": "DockerRequirement"
          },
          {
            "value": 2,
            "class": "sbg:CPURequirement"
          },
          {
            "value": 10000,
            "class": "sbg:MemRequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "input_bam": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/myfile.bam",
              "class": "File"
            }
          },
          "allocatedResources": {
            "mem": 10000,
            "cpu": 2
          }
        },
        "id": "gauravCGC/jax-sbg/samtools-fastq/13",
        "outputs": [
          {
            "description": "output fastq file",
            "outputBinding": {
              "glob": "*.fastq"
            },
            "fileTypes": "FASTQ",
            "label": "output_fastq",
            "type": [
              "null",
              "File"
            ],
            "id": "#output_fastq"
          }
        ],
        "sbg:latestRevision": 13,
        "sbg:contributors": [
          "gauravCGC",
          "snamburi3"
        ],
        "sbg:modifiedBy": "snamburi3",
        "baseCommand": [
          "samtools",
          "fastq"
        ],
        "successCodes": [],
        "stdout": {
          "engine": "#cwl-js-engine",
          "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  }\n  \n  inputfile = $job.inputs.input_bam.path\n  inputfile = baseName(inputfile)\n  extension = '.fastq'\n  return inputfile + extension\n}",
          "class": "Expression"
        },
        "description": "",
        "sbg:revision": 13,
        "sbg:modifiedOn": 1460317966,
        "sbg:image_url": null,
        "arguments": [],
        "sbg:id": "gauravCGC/jax-sbg/samtools-fastq/13",
        "x": 134.33337738779005,
        "stdin": "",
        "sbg:project": "gauravCGC/jax-sbg",
        "sbg:validationErrors": [],
        "label": "samtools-fastq",
        "sbg:createdOn": 1458664360,
        "inputs": [
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 0
            },
            "description": "input bam file",
            "required": true,
            "id": "#input_bam",
            "label": "input bam file",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "BAM"
          }
        ],
        "sbg:sbgMaintained": false,
        "y": -129.33332672384049,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458665517
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458664360
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458673774
          },
          {
            "sbg:modifiedBy": "gauravCGC",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1458676102
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1458686364
          },
          {
            "sbg:modifiedBy": "gauravCGC",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458675518
          },
          {
            "sbg:modifiedBy": "gauravCGC",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458675607
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1458689352
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1458690502
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1458687929
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1458690485
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1458692433
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 12,
            "sbg:modifiedOn": 1460313212
          },
          {
            "sbg:modifiedBy": "snamburi3",
            "sbg:revision": 13,
            "sbg:modifiedOn": 1460317966
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:createdBy": "snamburi3",
        "requirements": [
          {
            "requirements": [
              {
                "dockerPull": "rabix/js-engine",
                "class": "DockerRequirement"
              }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
          }
        ],
        "sbg:cmdPreview": "samtools fastq /path/to/myfile.bam > myfile.fastq"
      },
      "sbg:y": -129.33332672384049
    },
    {
      "id": "#vcf_parser",
      "outputs": [
        {
          "id": "#vcf_parser.output_vcf_file"
        }
      ],
      "sbg:x": 488.3333333333336,
      "inputs": [
        {
          "source": [
            "#Variant_Effect_Predictor.vep_output"
          ],
          "id": "#vcf_parser.input_vcf_file"
        }
      ],
      "run": {
        "hints": [
          {
            "value": 1,
            "class": "sbg:CPURequirement"
          },
          {
            "value": 1000,
            "class": "sbg:MemRequirement"
          },
          {
            "dockerPull": "python:2.7",
            "dockerImageId": "",
            "class": "DockerRequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "input_vcf_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/input_vcf_file.ext",
              "class": "File"
            }
          },
          "allocatedResources": {
            "mem": 1000,
            "cpu": 1
          }
        },
        "id": "NAMBURIS1/neoepitope-analysis/vcf-parser-modified/5",
        "outputs": [
          {
            "sbg:fileTypes": "VCF",
            "description": "output VCF file",
            "id": "#output_vcf_file",
            "label": "out.vcf",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.vcf"
            }
          }
        ],
        "sbg:latestRevision": 5,
        "sbg:contributors": [
          "NAMBURIS1"
        ],
        "sbg:modifiedBy": "NAMBURIS1",
        "baseCommand": [
          "python",
          "add_header.py"
        ],
        "successCodes": [],
        "stdout": {
          "engine": "#cwl-js-engine",
          "script": "\n{\n    function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  }\n  \n \n  inputfile = $job.inputs.input_vcf_file.path.replace(/^.*[\\\\\\/]/, '')\n  inputfile = baseName(inputfile)\n  extension = '.nochr.vcf'\n  return inputfile + extension\n}",
          "class": "Expression"
        },
        "description": "",
        "sbg:revision": 5,
        "sbg:modifiedOn": 1488492146,
        "sbg:image_url": null,
        "arguments": [],
        "sbg:id": "NAMBURIS1/neoepitope-analysis/vcf-parser-modified/5",
        "x": 488.3333333333336,
        "stdin": "",
        "sbg:project": "NAMBURIS1/neoepitope-analysis",
        "sbg:validationErrors": [],
        "label": "vcf-parser",
        "sbg:createdOn": 1467155071,
        "inputs": [
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 1
            },
            "description": "input VCF file",
            "required": true,
            "id": "#input_vcf_file",
            "label": "input.vcf",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "VCF"
          }
        ],
        "sbg:sbgMaintained": false,
        "y": 300.00000000000017,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1467155071,
            "sbg:revisionNotes": null
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1467155686,
            "sbg:revisionNotes": null
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1467467318,
            "sbg:revisionNotes": null
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1467472149,
            "sbg:revisionNotes": null
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1488491191,
            "sbg:revisionNotes": "changed the docker image to 'python'"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1488492146,
            "sbg:revisionNotes": "changed the docker python version to 2.7"
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:createdBy": "NAMBURIS1",
        "requirements": [
          {
            "requirements": [
              {
                "dockerPull": "rabix/js-engine",
                "class": "DockerRequirement"
              }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
          },
          {
            "fileDef": [
              {
                "fileContent": "import sys\nimport re\n\nflag = False\nfor line in open(sys.argv[1], \"r\"):\n    line = line.strip()\n    if line.startswith('##contig'):\n        line = re.sub('ID=chr', 'ID=', line)\n    if line.startswith('chr'):\n        line = re.sub('^chr', '', line)\n    if line.startswith('#CHROM'):\n        flag = True\n    if flag:\n        components = line.split()\n        if components[6] == 'REJECT':\n            continue\n        line = \"\\t\".join(map(str, components[0:10]))\n    print line",
                "filename": "add_header.py"
              },
              {
                "fileContent": "##contig=<ID=M,length=16571,assembly=hg19>\n##contig=<ID=1,length=249250621,assembly=hg19>\n##contig=<ID=2,length=243199373,assembly=hg19>\n##contig=<ID=3,length=198022430,assembly=hg19>\n##contig=<ID=4,length=191154276,assembly=hg19>\n##contig=<ID=5,length=180915260,assembly=hg19>\n##contig=<ID=6,length=171115067,assembly=hg19>\n##contig=<ID=7,length=159138663,assembly=hg19>\n##contig=<ID=8,length=146364022,assembly=hg19>\n##contig=<ID=9,length=141213431,assembly=hg19>\n##contig=<ID=10,length=135534747,assembly=hg19>\n##contig=<ID=11,length=135006516,assembly=hg19>\n##contig=<ID=12,length=133851895,assembly=hg19>\n##contig=<ID=13,length=115169878,assembly=hg19>\n##contig=<ID=14,length=107349540,assembly=hg19>\n##contig=<ID=15,length=102531392,assembly=hg19>\n##contig=<ID=16,length=90354753,assembly=hg19>\n##contig=<ID=17,length=81195210,assembly=hg19>\n##contig=<ID=18,length=78077248,assembly=hg19>\n##contig=<ID=19,length=59128983,assembly=hg19>\n##contig=<ID=20,length=63025520,assembly=hg19>\n##contig=<ID=21,length=48129895,assembly=hg19>\n##contig=<ID=22,length=51304566,assembly=hg19>\n##contig=<ID=X,length=155270560,assembly=hg19>\n##contig=<ID=Y,length=59373566,assembly=hg19>\n##contig=<ID=1_gl000191_random,length=106433,assembly=hg19>\n##contig=<ID=1_gl000192_random,length=547496,assembly=hg19>\n##contig=<ID=4_ctg9_hap1,length=590426,assembly=hg19>\n##contig=<ID=4_gl000193_random,length=189789,assembly=hg19>\n##contig=<ID=4_gl000194_random,length=191469,assembly=hg19>\n##contig=<ID=6_apd_hap1,length=4622290,assembly=hg19>\n##contig=<ID=6_cox_hap2,length=4795371,assembly=hg19>\n##contig=<ID=6_dbb_hap3,length=4610396,assembly=hg19>\n##contig=<ID=6_mann_hap4,length=4683263,assembly=hg19>\n##contig=<ID=6_mcf_hap5,length=4833398,assembly=hg19>\n##contig=<ID=6_qbl_hap6,length=4611984,assembly=hg19>\n##contig=<ID=6_ssto_hap7,length=4928567,assembly=hg19>\n##contig=<ID=7_gl000195_random,length=182896,assembly=hg19>\n##contig=<ID=8_gl000196_random,length=38914,assembly=hg19>\n##contig=<ID=8_gl000197_random,length=37175,assembly=hg19>\n##contig=<ID=9_gl000198_random,length=90085,assembly=hg19>\n##contig=<ID=9_gl000199_random,length=169874,assembly=hg19>\n##contig=<ID=9_gl000200_random,length=187035,assembly=hg19>\n##contig=<ID=9_gl000201_random,length=36148,assembly=hg19>\n##contig=<ID=11_gl000202_random,length=40103,assembly=hg19>\n##contig=<ID=17_ctg5_hap1,length=1680828,assembly=hg19>\n##contig=<ID=17_gl000203_random,length=37498,assembly=hg19>\n##contig=<ID=17_gl000204_random,length=81310,assembly=hg19>\n##contig=<ID=17_gl000205_random,length=174588,assembly=hg19>\n##contig=<ID=17_gl000206_random,length=41001,assembly=hg19>\n##contig=<ID=18_gl000207_random,length=4262,assembly=hg19>\n##contig=<ID=19_gl000208_random,length=92689,assembly=hg19>\n##contig=<ID=19_gl000209_random,length=159169,assembly=hg19>\n##contig=<ID=21_gl000210_random,length=27682,assembly=hg19>\n##contig=<ID=Un_gl000211,length=166566,assembly=hg19>\n##contig=<ID=Un_gl000212,length=186858,assembly=hg19>\n##contig=<ID=Un_gl000213,length=164239,assembly=hg19>\n##contig=<ID=Un_gl000214,length=137718,assembly=hg19>\n##contig=<ID=Un_gl000215,length=172545,assembly=hg19>\n##contig=<ID=Un_gl000216,length=172294,assembly=hg19>\n##contig=<ID=Un_gl000217,length=172149,assembly=hg19>\n##contig=<ID=Un_gl000218,length=161147,assembly=hg19>\n##contig=<ID=Un_gl000219,length=179198,assembly=hg19>\n##contig=<ID=Un_gl000220,length=161802,assembly=hg19>\n##contig=<ID=Un_gl000221,length=155397,assembly=hg19>\n##contig=<ID=Un_gl000222,length=186861,assembly=hg19>\n##contig=<ID=Un_gl000223,length=180455,assembly=hg19>\n##contig=<ID=Un_gl000224,length=179693,assembly=hg19>\n##contig=<ID=Un_gl000225,length=211173,assembly=hg19>\n##contig=<ID=Un_gl000226,length=15008,assembly=hg19>\n##contig=<ID=Un_gl000227,length=128374,assembly=hg19>\n##contig=<ID=Un_gl000228,length=129120,assembly=hg19>\n##contig=<ID=Un_gl000229,length=19913,assembly=hg19>\n##contig=<ID=Un_gl000230,length=43691,assembly=hg19>\n##contig=<ID=Un_gl000231,length=27386,assembly=hg19>\n##contig=<ID=Un_gl000232,length=40652,assembly=hg19>\n##contig=<ID=Un_gl000233,length=45941,assembly=hg19>\n##contig=<ID=Un_gl000234,length=40531,assembly=hg19>\n##contig=<ID=Un_gl000235,length=34474,assembly=hg19>\n##contig=<ID=Un_gl000236,length=41934,assembly=hg19>\n##contig=<ID=Un_gl000237,length=45867,assembly=hg19>\n##contig=<ID=Un_gl000238,length=39939,assembly=hg19>\n##contig=<ID=Un_gl000239,length=33824,assembly=hg19>\n##contig=<ID=Un_gl000240,length=41933,assembly=hg19>\n##contig=<ID=Un_gl000241,length=42152,assembly=hg19>\n##contig=<ID=Un_gl000242,length=43523,assembly=hg19>\n##contig=<ID=Un_gl000243,length=43341,assembly=hg19>\n##contig=<ID=Un_gl000244,length=39929,assembly=hg19>\n##contig=<ID=Un_gl000245,length=36651,assembly=hg19>\n##contig=<ID=Un_gl000246,length=38154,assembly=hg19>\n##contig=<ID=Un_gl000247,length=36422,assembly=hg19>\n##contig=<ID=Un_gl000248,length=39786,assembly=hg19>\n##contig=<ID=Un_gl000249,length=38502,assembly=hg19>",
                "filename": "header.txt"
              }
            ],
            "class": "CreateFileRequirement"
          }
        ],
        "sbg:cmdPreview": "python add_header.py  /path/to/input_vcf_file.ext > input_vcf_file.nochr.vcf",
        "sbg:revisionNotes": "changed the docker python version to 2.7"
      },
      "sbg:y": 300.00000000000017
    },
    {
      "id": "#netmhcpan",
      "outputs": [
        {
          "id": "#netmhcpan.netmhcpan_outputs_xls"
        },
        {
          "id": "#netmhcpan.netmhcpan_outputs_txt"
        }
      ],
      "sbg:x": 1371.667296396385,
      "inputs": [
        {
          "source": [
            "#peptide_length"
          ],
          "id": "#netmhcpan.peptide_length"
        },
        {
          "source": [
            "#protein_translator.tumor_fasta"
          ],
          "id": "#netmhcpan.input_fsa"
        },
        {
          "source": [
            "#input_database_file"
          ],
          "id": "#netmhcpan.input_database_file"
        },
        {
          "source": [
            "#hlaminer.predictions_file"
          ],
          "id": "#netmhcpan.hla_allele_file"
        }
      ],
      "run": {
        "hints": [
          {
            "value": 1,
            "class": "sbg:CPURequirement"
          },
          {
            "value": 1000,
            "class": "sbg:MemRequirement"
          },
          {
            "dockerPull": "netmhcpan:cloudneo",
            "dockerImageId": "",
            "class": "DockerRequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "peptide_length": 8,
            "input_fsa": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/test.fsa",
              "class": "File"
            },
            "hla_allele_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/hla_allele_file.ext",
              "class": "File"
            },
            "input_database_file": {
              "secondaryFiles": [],
              "size": 0,
              "path": "/path/to/input_database_file.ext",
              "class": "File"
            }
          },
          "allocatedResources": {
            "mem": 1000,
            "cpu": 1
          }
        },
        "id": "NAMBURIS1/neoepitope-analysis/netmhcpan-main/5",
        "outputs": [
          {
            "sbg:fileTypes": "XLS",
            "id": "#netmhcpan_outputs_xls",
            "type": [
              "null",
              {
                "items": "File",
                "type": "array"
              }
            ],
            "outputBinding": {
              "glob": "*.xls"
            }
          },
          {
            "sbg:fileTypes": "TXT",
            "id": "#netmhcpan_outputs_txt",
            "type": [
              "null",
              {
                "items": "File",
                "type": "array"
              }
            ],
            "outputBinding": {
              "glob": "*.txt"
            }
          }
        ],
        "sbg:latestRevision": 5,
        "sbg:contributors": [
          "NAMBURIS1"
        ],
        "sbg:modifiedBy": "NAMBURIS1",
        "baseCommand": [
          "python",
          "netmhcpan_parser.py"
        ],
        "successCodes": [],
        "stdout": "",
        "description": "",
        "sbg:revision": 5,
        "sbg:modifiedOn": 1489462033,
        "sbg:image_url": null,
        "sbg:projectName": "Neoepitope-analysis",
        "arguments": [
          {
            "valueFrom": {
              "engine": "#cwl-js-engine",
              "script": "'&& mv outputs/* .'",
              "class": "Expression"
            },
            "separate": true,
            "position": 99
          }
        ],
        "sbg:id": "NAMBURIS1/neoepitope-analysis/netmhcpan-main/5",
        "x": 1371.667296396385,
        "stdin": "",
        "sbg:project": "NAMBURIS1/neoepitope-analysis",
        "sbg:validationErrors": [],
        "label": "netmhcpan",
        "sbg:createdOn": 1488576833,
        "inputs": [
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-l",
              "separate": true,
              "position": 4
            },
            "description": "peptide length to generate",
            "id": "#peptide_length",
            "label": "peptide_length",
            "sbg:toolDefaultValue": "9",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-f",
              "separate": true,
              "position": 1
            },
            "description": "Input FSA File",
            "required": true,
            "id": "#input_fsa",
            "label": "input_FSA",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "FSA"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-d",
              "separate": true,
              "position": 3
            },
            "description": "input reference file",
            "required": true,
            "id": "#input_database_file",
            "label": "database.fasta",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "FASTA"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "prefix": "-hla",
              "separate": true,
              "position": 2
            },
            "description": "HLA allele file",
            "required": true,
            "id": "#hla_allele_file",
            "sbg:toolDefaultValue": "HLA-A0201",
            "type": [
              "File"
            ]
          }
        ],
        "sbg:sbgMaintained": false,
        "y": 408.35953390702366,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1488576833,
            "sbg:revisionNotes": "Copy of snamburi3/neoepitope-copy/netmhcpan-main/0"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1488579436,
            "sbg:revisionNotes": "added a new parameter and modified python script"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1488581220,
            "sbg:revisionNotes": "fixed: added prefix -l to peptide_length"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1489446184,
            "sbg:revisionNotes": "made all imputs as required"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1489446708,
            "sbg:revisionNotes": "removed peptide_length required condition"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1489462033,
            "sbg:revisionNotes": "added extensions"
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:createdBy": "NAMBURIS1",
        "requirements": [
          {
            "fileDef": [
              {
                "fileContent": "import re\nfrom Bio import SeqIO\nimport argparse\nfrom itertools import compress\nimport subprocess\nimport sys\nimport os\nfrom os.path import basename\nimport shutil\n\ndef process_hlaminer(input_file):\n    alleles = []\n    infile = open(input_file)\n    for line in infile:\n        line = line.strip()\n        if 'Prediction' in line:\n            allele_line = next(infile).strip()\n            if allele_line:\n                alleles.append(allele_line.split(',')[0])\n    alleles_bool = map(lambda x: x if re.match(r'^[A|B|C].*', x) else False, alleles)\n    return list(compress(alleles, alleles_bool))\n\ndef run_command(command, stdout=subprocess.PIPE):\n    print command\n    process = subprocess.Popen(command, shell=True, stdout=stdout)\n    out, err = process.communicate()\n    return out\n\ndef get_MHCalleles():\n    command = '/opt/netMHCpan-3.0/netMHCpan -listMHC > alleles_db/listMHC.fasta'\n    run_command(command, subprocess.PIPE)\n    out = open('alleles_db/listMHC.fasta').read()\n    mhc_alleles = filter(lambda x: x if not x.startswith('#') else False, out.split('\\n'))\n    return mhc_alleles\n\nif __name__ == '__main__':\n    parser = argparse.ArgumentParser(description='Process some integers.')\n    parser.add_argument(\n        '-hla', '--hla-input-file',\n        help='HLAminer Input file')\n    parser.add_argument(\n        '-d', '--database-file',\n        help='input IMGT database file')\n    parser.add_argument(\n        '-f', '--input-protein-file',\n        help='input protein file')\n    parser.add_argument(\n        '-l', '--peptide-length', default=9, type=int,\n        help='input peptide length')\n\n    args = parser.parse_args()\n\n    # set args\n    peptide_length = args.peptide_length\n\n    alelle_dir = 'alleles_db/'\n    if os.path.exists(alelle_dir):\n        shutil.rmtree(alelle_dir)\n    os.mkdir(alelle_dir, 0777);\n    out_dir = 'outputs/'\n    if os.path.exists(out_dir):\n        shutil.rmtree(out_dir)\n    os.mkdir(out_dir, 0777);\n\n    all_alleles = get_MHCalleles()\n    output_prefix = os.path.splitext(basename(args.input_protein_file))[0]\n    for allele in process_hlaminer(args.hla_input_file):\n        allele_to_search = allele\n        allele = re.sub('\\*', '', allele)\n        allele =  'HLA-' + re.sub('P$', '', allele)\n        netMHC_outxls = output_prefix + '.' + allele.replace(\":\", \"-\", 1) + '.xls'\n        allele_fasta = alelle_dir + re.sub('\\*', '', allele) + '.fasta'\n        netMHC_outtxt = output_prefix + '.' + allele.replace(\":\", \"-\", 1)  + '.txt'\n\n        if allele in all_alleles:\n            print allele\n            run_command('/opt/netMHCpan-3.0/netMHCpan -l {4} -a {0} -f {1} -xls -xlsfile outputs/{2} > outputs/{3}'\n                .format(allele, args.input_protein_file, netMHC_outxls, netMHC_outtxt, peptide_length))\n            continue\n\n        out = open(allele_fasta, 'w')\n        db_out = open(args.database_file, 'r')\n        seqiter = SeqIO.parse(db_out, 'fasta')\n        allele_to_search = re.sub('P$', '', allele_to_search)\n        print allele_to_search\n        SeqIO.write((seq for seq in seqiter if allele_to_search in seq.id), out, \"fasta\")\n        out.close()\n        db_out.close()\n        print run_command('/opt/netMHCpan-3.0/netMHCpan -l {4} -hlaseq {0} -f {1} -xls -xlsfile outputs/{2} > outputs/{3}'\n                .format(allele_fasta, args.input_protein_file, netMHC_outxls, netMHC_outtxt, peptide_length))\n\n        print run_command('ls -halt')\n        print run_command('ls -halt outputs/')",
                "filename": "netmhcpan_parser.py"
              }
            ],
            "class": "CreateFileRequirement"
          },
          {
            "requirements": [
              {
                "dockerPull": "rabix/js-engine",
                "class": "DockerRequirement"
              }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
          }
        ],
        "sbg:cmdPreview": "python netmhcpan_parser.py -f /path/to/test.fsa -hla /path/to/hla_allele_file.ext -d /path/to/input_database_file.ext  && mv outputs/* .",
        "sbg:revisionNotes": "added extensions"
      },
      "sbg:y": 408.35953390702366
    },
    {
      "id": "#protein_translator",
      "outputs": [
        {
          "id": "#protein_translator.tumor_fasta"
        },
        {
          "id": "#protein_translator.output_xls"
        },
        {
          "id": "#protein_translator.control_fasta"
        }
      ],
      "sbg:x": 938.3333496782512,
      "inputs": [
        {
          "id": "#protein_translator.output_tumor_file"
        },
        {
          "id": "#protein_translator.output_normal_file"
        },
        {
          "id": "#protein_translator.output_excel"
        },
        {
          "source": [
            "#kmer_peptide_length"
          ],
          "id": "#protein_translator.kmer_peptide_length"
        },
        {
          "source": [
            "#vcf_parser.output_vcf_file"
          ],
          "id": "#protein_translator.input_vcf"
        },
        {
          "source": [
            "#input_gtf"
          ],
          "id": "#protein_translator.input_gtf"
        },
        {
          "source": [
            "#input_csv"
          ],
          "id": "#protein_translator.input_csv"
        }
      ],
      "run": {
        "hints": [
          {
            "value": 1,
            "class": "sbg:CPURequirement"
          },
          {
            "value": 1000,
            "class": "sbg:MemRequirement"
          },
          {
            "dockerPull": "protein-translator:cloudneo",
            "dockerImageId": "",
            "class": "DockerRequirement"
          }
        ],
        "cwlVersion": "sbg:draft-2",
        "sbg:job": {
          "inputs": {
            "input_vcf": {
              "secondaryFiles": [],
              "size": 0,
              "path": "input_vcf.vcf",
              "class": "File"
            },
            "input_csv": {
              "secondaryFiles": [],
              "size": 0,
              "path": "input_csv.csv",
              "class": "File"
            },
            "input_gtf": {
              "secondaryFiles": [],
              "size": 0,
              "path": "input_gtf.gtf",
              "class": "File"
            },
            "kmer_peptide_length": 5,
            "output_excel": "output_excel-string-value",
            "output_tumor_file": "output_tumor_file-string-value",
            "output_normal_file": "output_normal_file-string-value"
          },
          "allocatedResources": {
            "mem": 1000,
            "cpu": 1
          }
        },
        "id": "NAMBURIS1/neoepitope-analysis/tcga-proteome-sbg/8",
        "outputs": [
          {
            "sbg:fileTypes": "FASTA",
            "id": "#tumor_fasta",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.tumor.fasta"
            }
          },
          {
            "sbg:fileTypes": "XLS",
            "id": "#output_xls",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.exome.xls"
            }
          },
          {
            "sbg:fileTypes": "FASTA",
            "id": "#control_fasta",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.normal.fasta"
            }
          }
        ],
        "sbg:latestRevision": 8,
        "sbg:contributors": [
          "NAMBURIS1"
        ],
        "sbg:modifiedBy": "NAMBURIS1",
        "baseCommand": [
          "Rscript",
          "protein_translator.r"
        ],
        "successCodes": [],
        "stdout": "",
        "description": "",
        "sbg:revision": 8,
        "sbg:modifiedOn": 1489462611,
        "sbg:image_url": null,
        "sbg:projectName": "Neoepitope-analysis",
        "arguments": [],
        "sbg:id": "NAMBURIS1/neoepitope-analysis/tcga-proteome-sbg/8",
        "x": 938.3333496782512,
        "stdin": "",
        "sbg:project": "NAMBURIS1/neoepitope-analysis",
        "sbg:validationErrors": [],
        "label": "protein_translator",
        "sbg:createdOn": 1467731126,
        "inputs": [
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 6,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_vcf.path\n  inputfile = baseName(inputfile.replace(/\\.[^/.]+$/, \"\"))\n  extension = '.tumor.fasta'\n  return inputfile + extension\n}",
                "class": "Expression"
              }
            },
            "description": "output fasta - tumor",
            "id": "#output_tumor_file",
            "type": [
              "null",
              "string"
            ],
            "label": "output.tumor.fasta"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 5,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_vcf.path\n  inputfile = baseName(inputfile.replace(/\\.[^/.]+$/, \"\"))\n  extension = '.normal.fasta'\n  return inputfile + extension\n}",
                "class": "Expression"
              }
            },
            "description": "output fasta - normal",
            "id": "#output_normal_file",
            "label": "output.normal.fasta",
            "sbg:toolDefaultValue": "FASTA",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "sbg:stageInput": null,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 4,
              "valueFrom": {
                "engine": "#cwl-js-engine",
                "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_vcf.path\n  inputfile = baseName(inputfile.replace(/\\.[^/.]+$/, \"\"))\n  extension = '.exome.xls'\n  return inputfile + extension\n}\n",
                "class": "Expression"
              }
            },
            "description": "output XLS file",
            "id": "#output_excel",
            "label": "out.xls",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": true,
              "position": 7
            },
            "description": "Kmer peptide length to generate",
            "id": "#kmer_peptide_length",
            "label": "kmer peptide length",
            "sbg:toolDefaultValue": "8",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 3
            },
            "required": true,
            "id": "#input_vcf",
            "type": [
              "File"
            ]
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 1
            },
            "description": "Default Homo_sapiens.GRCh38.83.gtf",
            "required": true,
            "id": "#input_gtf",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "GTF"
          },
          {
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 2
            },
            "required": true,
            "id": "#input_csv",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "CSV"
          }
        ],
        "sbg:sbgMaintained": false,
        "y": 628.3593849218964,
        "sbg:revisionsInfo": [
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1467731126,
            "sbg:revisionNotes": "Copy of snamburi3/neoepitope-copy/tcga-proteome-sbg/0"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1467752602,
            "sbg:revisionNotes": null
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1488488797,
            "sbg:revisionNotes": "modified original. Added peptide kmer length parameter"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1488561430,
            "sbg:revisionNotes": "modified original. Fixed r code"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1489446294,
            "sbg:revisionNotes": "made inputs as required"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1489447142,
            "sbg:revisionNotes": "removed kmer_peptide_length required parameter"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1489461696,
            "sbg:revisionNotes": "added description"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1489461989,
            "sbg:revisionNotes": "added extensions"
          },
          {
            "sbg:modifiedBy": "NAMBURIS1",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1489462611,
            "sbg:revisionNotes": null
          }
        ],
        "temporaryFailCodes": [],
        "class": "CommandLineTool",
        "sbg:createdBy": "NAMBURIS1",
        "requirements": [
          {
            "fileDef": [
              {
                "fileContent": "###########################################################################################################\n# Build tumor proteome for TCGA data based on a script by Dan Gatti (JAX) da.gatti@jax.org for Mouse\n# Preeti Bais, Preeti.Bais@jax.org  Feb 29, 2016\n# Modifified by Dnaiel Gatti, April 1, 2016.\n# Input files:  \"Homo_sapiens.GRCh38.83.gtf\", \"HumanProteins_GRCm38.78_Modified.csv\",\"inputvcffile.vcf\"\n# Output files: \"TCGA-A1-A0SE_D_IlluminaGA-DNASeq_exome_excel_final.csv\", \"TCGA-A1-A0SE_D_IlluminaGA-DNASeq_exome_final.csv\"\n# Command Line Usage: Rscript TCGA_Proteome_SBG.r input.gtf input.csv input.vcf\n# NOTE: We require taht the VCF contain ONLY SNPs and not indels or larger variants.  Also, we require\n#       that each SNP have one and only one ALT allele.\n##########################################################################################################\noptions(stringsAsFactors = F)\nlibrary(VariantAnnotation)\nlibrary(snpStats)\nlibrary(rtracklayer) \n\n\n## Create the Command Line Arguments ##\nargs = commandArgs(trailingOnly = TRUE)\n\n\n#myGTF <- \"Homo_sapiens.GRCh37.75.gtf\"\n\nmyGTF <- args[1]\ngtf <- import(myGTF) #pbais\n\n# Load in the ensembl GTF. (object name = gtf)\nexons = gtf[gtf$type == \"CDS\"]\nrm(gtf)\n\n# prot = read.csv(\"HumanProteins.GRCh37.75.csv\")\nprot = read.csv(args[2])\n\n################\n### SNPs #######\n################\n\n# Get the Sanger SNPs that intersect with the genes.\n# Using Sanger version 4 SNPs.\n\n#snpfile = \"_3_DOw-baseline.sorted.rmdup.realign.fixmate.mutect.vep_NOCHAR.vcf\"\nsnpfile <- args[3]\n\n\nhdr = scanVcfHeader(snpfile)\n\n# Synch up the genome and seqlevels.\nexons = keepSeqlevels(exons, seqlevels(hdr))\ngenome(exons) = rep(\"hg19\", length(genome(exons)))\n\n  # Get all SNPs in the VCF.\n  snps = readVcf(file = snpfile, genome = \"hg19\")\n\n \n  idx <- GenomicRanges:::get_out_of_bound_index(snps)\n  if (length(idx) != 0)\n    snps <- snps[-idx]\n\n  # Keep only SNPs that intersect with exons.\n  snps = subsetByOverlaps(snps, exons)\n\n  # Convert the genotypes to allele calls.\n  snps = genotypeCodesToNucleotides(snps)\n\n  # Remove SNPs with no consequence.\n  csq  = info(snps)$CSQ\n  keep = which(sapply(csq, length) > 0)\n  snps = snps[keep]\n  csq  = csq[keep]\n\n  # Create a smaller data set.\n  alt = as.character(unlist(fixed(snps)$ALT))\n  snps = GRanges(seqnames = seqnames(snps), ranges = ranges(snps),\n         mcols = cbind(ref = as.character(fixed(snps)$REF),\n         alt = alt, SNPID = names(rowRanges(snps)),\n         qual = fixed(snps)$FILTER, geno = geno(snps)$GT))\n  colnames(mcols(snps)) = sub(\"^mcols\\\\.\", \"\", colnames(mcols(snps)))\n\n  snps$ref  = as.character(snps$ref)\n  snps$alt  = as.character(snps$alt)\n  snps$SNPID  = as.character(snps$SNPID)\n  snps$qual = as.character(snps$qual)\n  #snps$geno = as.character(snps$geno)\n\n  # Convert the consequences into matrices.\n  # NOTE: We're truncating the VCF columns to 20 because we don't need the rest.\n  csq = lapply(csq, strsplit, split = \"\\\\|\")\n  csq = lapply(csq, function(z) {\n               z = lapply(z, \"[\", 1:20)\n               matrix(unlist(z), ncol = length(z[[1]]), byrow = T)\n        })\n\n  # Get all of the unique variant effects.\n  un = unique(unlist(sapply(csq, function(z) { z[,2] })))\n  un = sort(unique(unlist(strsplit(un, split = \"&\"))))\n\n  stopifnot(length(csq) == length(snps))\n\n  result = matrix(\"\", nrow = length(snps) * 10, ncol = 15, dimnames =\n           list(NULL, c(\"chr\", \"pos\", \"ID\", \"REF\", \"ALT\", \"quality\", \"gene\", \"symbol\",\n          \"transcript\", \"protein\", \"effect\", \"ProtPos\", \"REFAA\", \"ALTAA\",\"PRIMARY\")))\n\n  idx = 1  # row index in result.\n\n  for(j in 1:length(snps)) {\n\n    # Keep only variants with AA changes that match the current allele.\n    # Some SNPs will have two alleles.\n    curr.csq = csq[[j]]\n    curr.csq = curr.csq[curr.csq[,1] == snps$alt[j],,drop = FALSE]\n    curr.csq = curr.csq[curr.csq[,16] != \"\",,drop = FALSE]  # Column 16 contains the AA change.\n    curr.csq = curr.csq[grep(\"/\", curr.csq[,16]),,drop = FALSE]\n\n    print(paste(j, nrow(curr.csq)))\n\n    # If all of the variants were synonymous, we won't have any consequences here.\n    if(nrow(curr.csq) > 0) {\n\n      for(k in 1:nrow(curr.csq)) {\n\n        # Find the transcript in the protien sequences.\n        cur.prot = prot[prot$transcript == curr.csq[k,7],]\n        prot.pos = as.numeric(curr.csq[k,15]) # Column 15 is AA position in the protein.\n        prot.aa = substring(cur.prot$seq, prot.pos, prot.pos)\n        snp.aa = strsplit(curr.csq[k,16], split = \"/\")[[1]]\n\n        # If we have a reference AA, then verify that it matches the protein sequence.\n        # If we have a stop_lost (\"*\" as ref AA), then verify that the protein length\n        # equals the variant protein position.\n        if(snp.aa[1] == \"*\") {\n          if(curr.csq[k,2] == \"stop_lost\") {\n            stopifnot((prot.aa == \"X\" | prot.aa == \"*\") & snp.aa[1] == \"*\" |\n                      nchar(cur.prot$seq) == as.numeric(curr.csq[k,15]) - 1)\n          } else {\n            stopifnot(nchar(cur.prot$seq) == as.numeric(curr.csq[k,15]) - 1 |\n                      prot.aa == snp.aa[1])\n          } # else\n        } else if(snp.aa[1] == \"X\") {\n          # DMG: I don't know how to handle this case.\n          print(\"Got an X for AA.\")\n        } else {\n          # Abort if the AA in the protein sequence does not equal the AA in the VCF file.\n          #stopifnot(prot.aa == snp.aa[1] )\n        } # else\n\n        symbol = exons$gene_name[exons$gene_id == curr.csq[k,5]][1]\n\n        result[idx,] = c(as.character(seqnames(snps)[j]), start(snps)[j], snps$SNPID[j],\n                     snps$ref[j], snps$alt[j], snps$qual[j], curr.csq[k,5], symbol,\n                     curr.csq[k,7],  cur.prot[1,1],curr.csq[k,8],curr.csq[k,15],\n                     snp.aa, unlist(mcols(snps)[j, 5]))\n        idx = idx + 1\n\n      } # for(k)\n\n    } # if(nrow(curr.csq) > 0)\n\n  } # for(j)\n\n  result = result[result[,1] != \"\",]\n\n\n  colnames(prot)[1] <- \"protein\"\n  result2 <- merge(result, prot[,c(1,4,5)] , by =\"protein\")\n  result2[,1] <- 1:nrow(result2)\n  colnames(result2)[1] <- \"ProteinIndex\"\n  result3 <- result2\n\n  mynmer <- args[7]\n # mynmer <- 7\n  \n  mynmernew <- as.numeric(mynmer)\n\n\n  result2[[\"PSeq_Normal\"]] <- paste(\">Pr:\",result2$ProteinIndex, \"\\n\", substr(result2$seq, as.numeric(result2$ProtPos)-mynmernew, as.numeric(result2$ProtPos)+mynmernew), sep = \"\")\n\n  result2[[\"PSeq_Primary\"]] <- paste(\">Pr:\",result2$ProteinIndex, \"\\n\", paste(substr(result2$seq, as.numeric(result2$ProtPos)-mynmernew, as.numeric(result2$ProtPos)-1),result2$ALTAA,\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  substr(result2$seq, as.numeric(result2$ProtPos)+ 1, as.numeric(result2$ProtPos)+mynmernew),sep=\"\" ),sep = \"\")\n\n  save(result3, file = \"protein_changes.Rdata\")\n\n\n\n# Read in all Chrs, filter out the synonymous variants and write the data\n# out to one, big file.\nfiles = dir(pattern = \"Rdata$\")\nnum = gsub(\"^protein_changes_chr|\\\\.Rdata$\", \"\", files)\nfiles = files[order(as.numeric(num))]\n# files[20:22] = files[c(21,22,20)] # commented out because creating list of NA\n\n\n## or use harcoded-names\nexceloutfile  = args[4]\n#exceloutfile <- \"tempexcel.csv\"\noutfile1 = args[5]\n\n#outfile1 <- \"temppp1.fasta\"\n#outfile2 <- \"temppp2.fasta\"\n\noutfile2 = args[6]\nfor(i in 1:length(files)) {\n\n  load(files[i])\n  dim(result2)\n  #result = result[-grep(\"synonymous\", result[,\"effect\"]),]\n  print(paste(i,dim(result2)))\n\n  # Set the no calls to \"N/N\".\n  result2[,15:16][result2[,15:16] == \".\"] = \"N/N\"\n\n   write.table(result2$PSeq_Normal, file = outfile1, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = \",\")\n   write.table(result2$PSeq_Primary, file = outfile2, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = \",\")\n  # Set the reference calls to \".\".\n  #ref = paste(result2[,\"REF\"], result2[,\"REF\"], sep = \"/\")\n  #result2[,15:16][ref == result2[,15:16]] = \".\"\n\n  write.table(result3, file = exceloutfile, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = \",\")\n} # for(i)",
                "filename": "protein_translator.r"
              }
            ],
            "class": "CreateFileRequirement"
          },
          {
            "requirements": [
              {
                "dockerPull": "rabix/js-engine",
                "class": "DockerRequirement"
              }
            ],
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement"
          }
        ],
        "sbg:cmdPreview": "Rscript protein_translator.r input_gtf.gtf input_csv.csv input_vcf.vcf"
      },
      "sbg:y": 628.3593849218964
    }
  ],
  "sbg:projectName": "Neoepitope-analysis",
  "sbg:project": "NAMBURIS1/neoepitope-analysis",
  "sbg:validationErrors": [],
  "sbg:canvas_zoom": 0.5999999999999996,
  "label": "Neoepitope Analysis",
  "sbg:createdOn": 1460333206,
  "inputs": [
    {
      "sbg:fileTypes": "BAM",
      "id": "#input_bam",
      "sbg:x": -86.1960783877404,
      "label": "input_bam",
      "type": [
        "File"
      ],
      "sbg:y": -65.56861333987253
    },
    {
      "sbg:fileTypes": "TAR.GZ",
      "id": "#input_reference_file",
      "sbg:x": -78.64705683047461,
      "label": "input_reference_file",
      "type": [
        "null",
        "File"
      ],
      "sbg:y": 279.3223686743721
    },
    {
      "sbg:fileTypes": "VCF TXT",
      "id": "#input_file",
      "sbg:x": -83.33343341615854,
      "label": "input_file",
      "type": [
        "File"
      ],
      "sbg:y": 438.3336264689875
    },
    {
      "sbg:fileTypes": "FASTA",
      "id": "#input_database_file",
      "sbg:x": 843.3333899047652,
      "label": "input_database_file",
      "type": [
        "null",
        "File"
      ],
      "sbg:y": 348.3334064881033
    },
    {
      "sbg:fileTypes": "FASTA",
      "id": "#input_allele_database",
      "sbg:x": -81.66678388913932,
      "label": "input_allele_database",
      "type": [
        "File"
      ],
      "sbg:y": 94.988427704775
    },
    {
      "sbg:fileTypes": "GTF",
      "id": "#input_gtf",
      "sbg:x": 718.3333619435633,
      "label": "input_gtf_1",
      "type": [
        "File"
      ],
      "sbg:y": 705.0001348389565
    },
    {
      "sbg:fileTypes": "CSV",
      "id": "#input_csv",
      "sbg:x": 721.666695872943,
      "label": "input_csv_1",
      "type": [
        "File"
      ],
      "sbg:y": 866.6667214499593
    },
    {
      "inputBinding": {
        "sbg:cmdInclude": true,
        "prefix": "-e",
        "separate": true,
        "position": 0
      },
      "description": "maximum number of gap extensions, -1 for disabling long gaps [-1]",
      "sbg:suggestedValue": 0,
      "label": "maximum number of gap extensions",
      "sbg:toolDefaultValue": "0",
      "type": [
        "null",
        "int"
      ],
      "id": "#num_gap_extensions"
    },
    {
      "sbg:stageInput": null,
      "inputBinding": {
        "sbg:cmdInclude": true,
        "prefix": "-o",
        "separate": true,
        "position": 2
      },
      "description": "maximum number or fraction of gap opens [1]",
      "sbg:suggestedValue": 0,
      "label": "maximum number or fraction of gap opens",
      "sbg:toolDefaultValue": "0",
      "type": [
        "null",
        "int"
      ],
      "id": "#maximum_number_of_gap_opens"
    },
    {
      "inputBinding": {
        "sbg:cmdInclude": true,
        "prefix": "--vcf",
        "separate": true,
        "position": 1
      },
      "description": "Writes output in VCF format. Consequences are added in the INFO field of the VCF file, using the key \"CSQ\". Data fields are encoded separated by \"|\"; the order of fields is written in the VCF header. Output fields can be selected by using --fields.  If the input format was VCF, the file will remain unchanged save for the addition of the CSQ field (unless using any filtering).  Custom data added with --custom are added as separate fields, using the key specified for each data file.  Commas in fields are replaced with ampersands (&) to preserve VCF format.",
      "sbg:suggestedValue": true,
      "sbg:category": "Data format options",
      "label": "Output as VCF file",
      "sbg:toolDefaultValue": "False",
      "type": [
        "null",
        "boolean"
      ],
      "id": "#vcf"
    },
    {
      "inputBinding": {
        "sbg:cmdInclude": true,
        "prefix": "--html",
        "separate": true,
        "position": 1
      },
      "description": "Generate an additional HTML version of the output file containing hyperlinks to Ensembl and other resources. File name of this file is [output_file].html. In order for this feature to work properly you will have to set VEP's to \"default\" (text) format and place that output in the same folder as this HTML file.",
      "sbg:suggestedValue": true,
      "label": "HTML",
      "sbg:toolDefaultValue": "False",
      "type": [
        "null",
        "boolean"
      ],
      "id": "#html"
    },
    {
      "description": "Shortcut flag for the filters - this will exclude variants that have a co-located existing variant with global MAF > 0.01 (1%). May be modified using any of the following freq_* filters. For human, this can be used in offline mode for the following populations: 1KG_ALL, 1KG_AFR, 1KG_AMR, 1KG_ASN, 1KG_EUR.",
      "id": "#filter_common",
      "sbg:category": "Filtering and QC options",
      "label": "Filter common",
      "sbg:toolDefaultValue": "False",
      "type": [
        "null",
        "boolean"
      ],
      "sbg:suggestedValue": true
    },
    {
      "sbg:stageInput": null,
      "inputBinding": {
        "sbg:cmdInclude": true,
        "prefix": "-s",
        "separate": true,
        "position": 2
      },
      "description": "minimum score",
      "sbg:suggestedValue": "500",
      "sbg:toolDefaultValue": "500",
      "type": [
        "null",
        {
          "symbols": [
            "500"
          ],
          "name": "minimum_score",
          "type": "enum"
        }
      ],
      "id": "#minimum_score"
    },
    {
      "inputBinding": {
        "sbg:cmdInclude": true,
        "prefix": "-l",
        "separate": true,
        "position": 2
      },
      "id": "#label_run_name",
      "type": [
        "null",
        "string"
      ]
    },
    {
      "sbg:stageInput": null,
      "inputBinding": {
        "sbg:cmdInclude": true,
        "prefix": "-e",
        "separate": true,
        "position": 5
      },
      "description": "single-end reads used (1=yes/0=no)",
      "sbg:suggestedValue": 1,
      "label": "bool",
      "sbg:toolDefaultValue": "1",
      "type": [
        "null",
        "int"
      ],
      "id": "#bool_single_end_reads_used"
    },
    {
      "description": "peptide length to generate",
      "id": "#peptide_length",
      "sbg:suggestedValue": 9,
      "required": false,
      "label": "peptide_length",
      "sbg:toolDefaultValue": "9",
      "type": [
        "null",
        "int"
      ],
      "sbg:includeInPorts": false
    },
    {
      "description": "Kmer peptide length to generate",
      "sbg:suggestedValue": 17,
      "label": "kmer peptide length",
      "sbg:toolDefaultValue": "8",
      "type": [
        "null",
        "int"
      ],
      "id": "#kmer_peptide_length"
    }
  ],
  "sbg:sbgMaintained": false,
  "sbg:revisionsInfo": [
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 0,
      "sbg:modifiedOn": 1460333206,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 1,
      "sbg:modifiedOn": 1460353015,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 2,
      "sbg:modifiedOn": 1460387840,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 3,
      "sbg:modifiedOn": 1460450688,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 4,
      "sbg:modifiedOn": 1460459343,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 5,
      "sbg:modifiedOn": 1460459367,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 6,
      "sbg:modifiedOn": 1460483136,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 7,
      "sbg:modifiedOn": 1462056270,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 8,
      "sbg:modifiedOn": 1462056775,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 9,
      "sbg:modifiedOn": 1462056812,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 10,
      "sbg:modifiedOn": 1463071949,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 11,
      "sbg:modifiedOn": 1463417576,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 12,
      "sbg:modifiedOn": 1466775810,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 13,
      "sbg:modifiedOn": 1467152935,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 14,
      "sbg:modifiedOn": 1467155801,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 15,
      "sbg:modifiedOn": 1467467334,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 16,
      "sbg:modifiedOn": 1467472174,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 17,
      "sbg:modifiedOn": 1467752974,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 18,
      "sbg:modifiedOn": 1467854861,
      "sbg:revisionNotes": "filter_variants is on"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 19,
      "sbg:modifiedOn": 1477403197,
      "sbg:revisionNotes": "Changed the name of the Rscript to \"Protein_Translator\""
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 20,
      "sbg:modifiedOn": 1488323476,
      "sbg:revisionNotes": "cpu - 8, memory 40, buffer 50000"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 21,
      "sbg:modifiedOn": 1488489150,
      "sbg:revisionNotes": "modified original. Added Kmer length. Updated protein translator."
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 22,
      "sbg:modifiedOn": 1488491263,
      "sbg:revisionNotes": "Changed the netmhcpan id, and updated vcf_parser docker image to python"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 23,
      "sbg:modifiedOn": 1488492178,
      "sbg:revisionNotes": "changed the docker version to 2.7"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 24,
      "sbg:modifiedOn": 1488561472,
      "sbg:revisionNotes": "modified Protein translator"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 25,
      "sbg:modifiedOn": 1488579902,
      "sbg:revisionNotes": "added new netmhcpan code and changed the pointers"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 26,
      "sbg:modifiedOn": 1488581265,
      "sbg:revisionNotes": "changed netmhcpan, missed prefix -l"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 27,
      "sbg:modifiedOn": 1489446346,
      "sbg:revisionNotes": "updated required inputs"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 28,
      "sbg:modifiedOn": 1489446477,
      "sbg:revisionNotes": "updated defaults"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 29,
      "sbg:modifiedOn": 1489447171,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 30,
      "sbg:modifiedOn": 1489447278,
      "sbg:revisionNotes": "update 2.0"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 31,
      "sbg:modifiedOn": 1489447284,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 32,
      "sbg:modifiedOn": 1489447817,
      "sbg:revisionNotes": "exposed the parameters"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 33,
      "sbg:modifiedOn": 1489461581,
      "sbg:revisionNotes": "removed _1"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 34,
      "sbg:modifiedOn": 1489461891,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 35,
      "sbg:modifiedOn": 1489462151,
      "sbg:revisionNotes": "updated to v.1"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 36,
      "sbg:modifiedOn": 1489462653,
      "sbg:revisionNotes": "upadted protein_translator"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 37,
      "sbg:modifiedOn": 1489510176,
      "sbg:revisionNotes": "updated protein_translator"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 38,
      "sbg:modifiedOn": 1489510264,
      "sbg:revisionNotes": "exposed kmer_peptide length"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 39,
      "sbg:modifiedOn": 1489514162,
      "sbg:revisionNotes": "changed the input names to _1"
    },
    {
      "sbg:modifiedBy": "NAMBURIS1",
      "sbg:revision": 40,
      "sbg:modifiedOn": 1489592149,
      "sbg:revisionNotes": "removed duplicate netmhcpan"
    }
  ],
  "class": "Workflow",
  "sbg:createdBy": "NAMBURIS1",
  "requirements": [],
  "sbg:revisionNotes": "removed duplicate netmhcpan"
}
