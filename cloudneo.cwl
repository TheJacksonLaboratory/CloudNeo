{
  "class": "Workflow",
  "steps": [
    {
      "id": "#bwa_aln",
      "run": {
        "stdout": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "{\n  \nfunction baseName(str)\n{\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n}\n  \n  filepath = $job.inputs.input_fastq.path;\n  filename = baseName(filepath);\n  extension = '.aln.sai';\n  return filename + extension\n}"
        },
        "sbg:validationErrors": [],
        "baseCommand": [
          "bwa",
          "aln"
        ],
        "inputs": [
          {
            "sbg:toolDefaultValue": "0",
            "inputBinding": {
              "separate": true,
              "position": 0,
              "sbg:cmdInclude": true,
              "prefix": "-e"
            },
            "id": "#num_gap_extensions",
            "label": "maximum number of gap extensions",
            "description": "maximum number of gap extensions, -1 for disabling long gaps [-1]",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "sbg:toolDefaultValue": "0",
            "inputBinding": {
              "separate": true,
              "position": 2,
              "sbg:cmdInclude": true,
              "prefix": "-o"
            },
            "id": "#maximum_number_of_gap_opens",
            "label": "maximum number or fraction of gap opens",
            "description": "maximum number or fraction of gap opens [1]",
            "type": [
              "null",
              "int"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:fileTypes": "FASTQ",
            "inputBinding": {
              "separate": true,
              "position": 4,
              "sbg:cmdInclude": true
            },
            "id": "#input_fastq",
            "label": "in.fq",
            "description": "in.fq",
            "type": [
              "File"
            ],
            "required": true
          },
          {
            "sbg:fileTypes": "fasta",
            "inputBinding": {
              "separate": true,
              "position": 3,
              "secondaryFiles": [
                ".amb",
                ".ann",
                ".bwt",
                ".pac",
                ".sa"
              ],
              "sbg:cmdInclude": true
            },
            "id": "#input_database_fasta",
            "label": "in.db.fasta",
            "description": "in.db.fasta",
            "type": [
              "File"
            ],
            "required": true
          }
        ],
        "sbg:createdBy": "snamburi3",
        "sbg:revisionsInfo": [
          {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458653910,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458656027,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458663077,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458663448,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458673485,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1458680461,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1458681114,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1458681826,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1458682914,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1458689685,
            "sbg:modifiedBy": "snamburi3"
          }
        ],
        "id": "gauravCGC/jax-sbg/bwa-aln/9",
        "label": "bwa-aln",
        "description": "",
        "requirements": [
          {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
              {
                "class": "DockerRequirement",
                "dockerPull": "rabix/js-engine"
              }
            ]
          }
        ],
        "x": 524.6667274766518,
        "sbg:sbgMaintained": false,
        "stdin": "",
        "sbg:modifiedBy": "snamburi3",
        "outputs": [
          {
            "id": "#alignment_sai_file",
            "fileTypes": "SAI",
            "label": "aln_sa.sai",
            "description": "aln_sa.sai",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "sbg:inheritMetadataFrom": "#output_aln_sai_file",
              "glob": "*.sai"
            }
          }
        ],
        "sbg:latestRevision": 9,
        "sbg:modifiedOn": 1458689685,
        "y": -139.33333080344718,
        "sbg:cmdPreview": "bwa aln  /path/to/database_file.ext  /path/to/input_fastq.ext > input_fastq.aln.sai",
        "sbg:id": "gauravCGC/jax-sbg/bwa-aln/9",
        "sbg:image_url": null,
        "successCodes": [],
        "sbg:project": "gauravCGC/jax-sbg",
        "hints": [
          {
            "class": "sbg:CPURequirement",
            "value": 2
          },
          {
            "class": "sbg:MemRequirement",
            "value": 2000
          },
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "bwa"
          }
        ],
        "class": "CommandLineTool",
        "sbg:revision": 9,
        "sbg:job": {
          "allocatedResources": {
            "cpu": 2,
            "mem": 2000
          },
          "inputs": {
            "input_fastq": {
              "path": "/path/to/input_fastq.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "num_gap_extensions": 0,
            "input_database_fasta": {
              "path": "/path/to/database_file.ext",
              "class": "File",
              "size": 0,
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
              ]
            },
            "maximum_number_of_gap_opens": 0
          }
        },
        "arguments": [],
        "temporaryFailCodes": [],
        "sbg:createdOn": 1458653910,
        "sbg:contributors": [
          "snamburi3"
        ]
      },
      "inputs": [
        {
          "id": "#bwa_aln.num_gap_extensions",
          "source": [
            "#num_gap_extensions"
          ]
        },
        {
          "id": "#bwa_aln.maximum_number_of_gap_opens",
          "source": [
            "#maximum_number_of_gap_opens"
          ]
        },
        {
          "id": "#bwa_aln.input_fastq",
          "source": [
            "#samtools_fastq.output_fastq"
          ]
        },
        {
          "id": "#bwa_aln.input_database_fasta",
          "source": [
            "#input_allele_database"
          ]
        }
      ],
      "outputs": [
        {
          "id": "#bwa_aln.alignment_sai_file"
        }
      ],
      "hints": [
        {
          "class": "sbg:AWSInstanceType",
          "value": "r3.2xlarge"
        }
      ],
      "sbg:x": 524.6667274766518,
      "sbg:y": -139.33333080344718
    },
    {
      "id": "#bwa_sampe",
      "run": {
        "stdout": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_fastq_file.path\n  //inputfile = inputfile.replace(/\\.[^/.]+$/, \"\")\n  inputfile = baseName(inputfile)\n  extension = '.sam'\n  return inputfile + extension\n}"
        },
        "sbg:validationErrors": [],
        "baseCommand": [
          "bwa",
          "samse"
        ],
        "inputs": [
          {
            "sbg:fileTypes": "SAI",
            "inputBinding": {
              "separate": true,
              "position": 2,
              "sbg:cmdInclude": true
            },
            "id": "#input_sai_file",
            "label": "input sai file",
            "description": "input sai file",
            "type": [
              "File"
            ],
            "required": true
          },
          {
            "sbg:fileTypes": "fastq, FASTQ",
            "inputBinding": {
              "separate": true,
              "position": 3,
              "sbg:cmdInclude": true
            },
            "id": "#input_fastq_file",
            "label": "in.fq",
            "description": "input fastq",
            "type": [
              "File"
            ],
            "required": true
          },
          {
            "sbg:fileTypes": "fasta, FASTA",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "secondaryFiles": [
                ".amb",
                ".ann",
                ".bwt",
                ".pac",
                ".sa"
              ],
              "sbg:cmdInclude": true
            },
            "id": "#input_database_fasta",
            "label": "in.db.fasta",
            "description": "in.db.fasta",
            "type": [
              "File"
            ],
            "required": true
          }
        ],
        "sbg:createdBy": "snamburi3",
        "sbg:revisionsInfo": [
          {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458684305,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458683106,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458689572,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458690442,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458741567,
            "sbg:modifiedBy": "snamburi3"
          }
        ],
        "id": "gauravCGC/jax-sbg/bwa-sampe/4",
        "label": "bwa-sampe",
        "description": "",
        "requirements": [
          {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
              {
                "class": "DockerRequirement",
                "dockerPull": "rabix/js-engine"
              }
            ]
          }
        ],
        "x": 694.6667552391716,
        "sbg:sbgMaintained": false,
        "stdin": "",
        "sbg:modifiedBy": "snamburi3",
        "outputs": [
          {
            "id": "#output_sam_file",
            "fileTypes": "SAM",
            "label": "out.sam",
            "description": "output SAM file",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.sam"
            }
          }
        ],
        "sbg:latestRevision": 4,
        "sbg:modifiedOn": 1458741567,
        "y": 51.33335387706819,
        "sbg:cmdPreview": "bwa samse  test.fasta  test.sai  test.fastq > test.sam",
        "sbg:id": "gauravCGC/jax-sbg/bwa-sampe/4",
        "sbg:image_url": null,
        "successCodes": [],
        "sbg:project": "gauravCGC/jax-sbg",
        "hints": [
          {
            "class": "sbg:CPURequirement",
            "value": 4
          },
          {
            "class": "sbg:MemRequirement",
            "value": 4000
          },
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "bwa"
          }
        ],
        "class": "CommandLineTool",
        "sbg:revision": 4,
        "sbg:job": {
          "allocatedResources": {
            "cpu": 4,
            "mem": 4000
          },
          "inputs": {
            "input_sai_file": {
              "path": "test.sai",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "input_fastq_file": {
              "path": "test.fastq",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "input_database_fasta": {
              "path": "test.fasta",
              "class": "File",
              "size": 0,
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
              ]
            }
          }
        },
        "arguments": [],
        "temporaryFailCodes": [],
        "sbg:createdOn": 1458683106,
        "sbg:contributors": [
          "snamburi3"
        ]
      },
      "inputs": [
        {
          "id": "#bwa_sampe.input_sai_file",
          "source": [
            "#bwa_aln.alignment_sai_file"
          ]
        },
        {
          "id": "#bwa_sampe.input_fastq_file",
          "source": [
            "#samtools_fastq.output_fastq"
          ]
        },
        {
          "id": "#bwa_sampe.input_database_fasta",
          "source": [
            "#input_allele_database"
          ]
        }
      ],
      "outputs": [
        {
          "id": "#bwa_sampe.output_sam_file"
        }
      ],
      "hints": [
        {
          "class": "sbg:AWSInstanceType",
          "value": "r3.2xlarge"
        }
      ],
      "sbg:x": 694.6667552391716,
      "sbg:y": 51.33335387706819
    },
    {
      "id": "#Variant_Effect_Predictor",
      "run": {
        "sbg:copyOf": "djordje_klisic/public-apps-by-seven-bridges/variant-effect-predictor-83/42",
        "hints": [
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "variant_effect_predictor:83"
          },
          {
            "class": "sbg:CPURequirement",
            "value": {
              "class": "Expression",
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.number_of_cpus>0)\n  \treturn $job.inputs.number_of_cpus\n  else\n    return 8\n}"
            }
          },
          {
            "class": "sbg:MemRequirement",
            "value": {
              "class": "Expression",
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.memory_for_job>0)\n  \treturn $job.inputs.memory_for_job\n  else\n    return 15000\n}"
            }
          }
        ],
        "baseCommand": [
          "tar",
          "xfz",
          {
            "class": "Expression",
            "engine": "#cwl-js-engine",
            "script": "$job.inputs.species_cache_file.path"
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
        "inputs": [
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--xref_refseq"
            },
            "sbg:category": "Identifiers",
            "id": "#xref_refseq",
            "label": "Xref refseq",
            "description": "Output aligned RefSeq mRNA identifier for transcript. NB: theRefSeq and Ensembl transcripts aligned in this way MAY NOT, AND FREQUENTLY WILL NOT, match exactly in sequence, exon structure and protein product.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "id": "#vcf_info_field_other",
            "label": "VCF info field (other)",
            "description": "If you selected \"other\" for VCF info field please enter name here.",
            "type": [
              "null",
              "string"
            ],
            "sbg:category": "Output options (VCF Info)"
          },
          {
            "sbg:toolDefaultValue": "CSQ",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  if($job.inputs.vcf_info_field==\"Other\")\n  \treturn $job.inputs.vcf_info_field_other;\n  else if($job.inputs.vcf_info_field==\"ANN\")\n    return \"ANN\";\n}"
              },
              "prefix": "--vcf_info_field"
            },
            "sbg:category": "Output options (VCF Info)",
            "id": "#vcf_info_field",
            "label": "VCF info field",
            "description": "Change the name of the INFO key that VEP write the consequences to in its VCF output. Use \"ANN\" for compatibility with other tools such as snpEff.",
            "type": [
              "null",
              {
                "symbols": [
                  "CSQ",
                  "ANN",
                  "Other"
                ],
                "type": "enum",
                "name": "vcf_info_field"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--vcf"
            },
            "sbg:category": "Data format options",
            "id": "#vcf",
            "label": "Output as VCF file",
            "description": "Writes output in VCF format. Consequences are added in the INFO field of the VCF file, using the key \"CSQ\". Data fields are encoded separated by \"|\"; the order of fields is written in the VCF header. Output fields can be selected by using --fields.  If the input format was VCF, the file will remain unchanged save for the addition of the CSQ field (unless using any filtering).  Custom data added with --custom are added as separate fields, using the key specified for each data file.  Commas in fields are replaced with ampersands (&) to preserve VCF format.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--variant_class"
            },
            "sbg:category": "Output options",
            "id": "#variant_class",
            "label": "Variant class",
            "description": "Output the Sequence Ontology variant class.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--uniprot"
            },
            "sbg:category": "Identifiers",
            "id": "#uniprot",
            "label": "UniProt",
            "description": "Adds identifiers for translated protein products from three UniProt-related databases (SWISSPROT, TREMBL and UniParc) to the output.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--tsl"
            },
            "sbg:category": "Identifiers",
            "id": "#tsl",
            "label": "TSL",
            "description": "Adds the transcript support level for this transcript to the output.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--total_length"
            },
            "sbg:category": "Output options",
            "id": "#total_length",
            "label": "Total length",
            "description": "Give cDNA, CDS and protein positions as Position/Length.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "SO",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--terms"
            },
            "sbg:category": "Output options",
            "id": "#terms",
            "label": "Terms",
            "description": "The type of consequence terms to output.  The Sequence Ontology is a joint effort by genome annotation centres to standardise descriptions of biological sequences.",
            "sbg:altPrefix": "-t",
            "type": [
              "null",
              {
                "symbols": [
                  "ensembl",
                  "so"
                ],
                "type": "enum",
                "name": "terms"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--symbol"
            },
            "sbg:category": "Identifiers",
            "id": "#symbol",
            "label": "Symbol",
            "description": "Adds the gene symbol (e.g. HGNC) (where available) to the output.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--summary"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#summary",
            "label": "Summary",
            "description": "Output only a comma-separated list of all observed consequences per variation. Transcript-specific columns will be left blank.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "id": "#species_cache_file",
            "sbg:category": "Input options",
            "sbg:fileTypes": "TAR.GZ",
            "label": "Species Cache File",
            "description": "Cache file for the chosen species (including refseq). You can find these cache files on ftp://ftp.ensembl.org/pub/release-83/variation/VEP/.",
            "type": [
              "File"
            ],
            "required": true
          },
          {
            "sbg:toolDefaultValue": "homo_sapiens",
            "inputBinding": {
              "separate": true,
              "position": 0,
              "sbg:cmdInclude": true,
              "prefix": "--species"
            },
            "sbg:category": "Input options",
            "id": "#species",
            "label": "Species for your data",
            "description": "Species for your data. This can be the latin name e.g. \"homo_sapiens\" or any Ensembl alias e.g. \"mouse\". Specifying the latin name can speed up initial database connection as the registry does not have to load all available database aliases on the server.",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "sbg:toolDefaultValue": "none",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  var sift = $job.inputs.sift;\n  \n  var options = {\n    \"Prediction term\": \"p\",\n    \"Score\": \"s\",\n    \"Both\": \"b\",\n  }\n  \n  if (sift && sift != \"None\"){\n    return options[sift]\n  }\n}"
              },
              "prefix": "--sift"
            },
            "sbg:category": "Output options",
            "id": "#sift",
            "label": "Sift",
            "description": "Species limited SIFT predicts whether an amino acid substitution affects protein function based on sequence homology and the physical properties of amino acids. The VEP can output the prediction term, score or both.",
            "type": [
              "null",
              {
                "symbols": [
                  "Prediction term",
                  "Score",
                  "Both",
                  "None"
                ],
                "type": "enum",
                "name": "sift"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "Enable",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{var shift = $job.inputs.shift_hgvs;\n  \n  if (shift && shift==\"Disable\"){\n    return \"0\";\n  }\n}"
              },
              "prefix": "--shift_hgvs"
            },
            "sbg:category": "Identifiers",
            "id": "#shift_hgvs",
            "label": "Shift HGVS",
            "description": "Enable or disable 3' shifting of HGVS notations. When enabled, this causes ambiguous insertions or deletions (typically in repetetive sequence tracts) to be \"shifted\" to their most 3' possible coordinates (relative to the transcript sequence and strand) before the HGVS notations are calculated; the flag HGVS_OFFSET is set to the number of bases by which the variant has shifted, relative to the input genomic coordinates. Disabling retains the original input coordinates of the variant.",
            "type": [
              "null",
              {
                "symbols": [
                  "Enable",
                  "Disable"
                ],
                "type": "enum",
                "name": "shift_hgvs"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--regulatory"
            },
            "sbg:category": "Output options",
            "id": "#regulatory",
            "label": "Regulatory",
            "description": "Look for overlaps with regulatory regions. The script can also call if a variant falls in a high information position within a transcription factor binding site. Output lines have a Feature type of RegulatoryFeature or MotifFeature.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--refseq"
            },
            "sbg:category": "Database options",
            "id": "#refseq",
            "label": "Refseq",
            "description": "Instead of using the core database, use the otherfeatures database to retrieve transcripts. This database contains transcript objects corresponding to RefSeq transcripts (to include CCDS and Ensembl ESTs also, use --all_refseq). Consequence output will be given relative to these transcripts in place of the default Ensembl transcripts (see documentation)  You should also specify this option if you have installed the RefSeq cache in order for the VEP to pick up the alternate cache directory.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--pubmed"
            },
            "sbg:category": "Co-located variants",
            "id": "#pubmed",
            "label": "Pubmed",
            "description": "Report Pubmed IDs for publications that cite existing variant. Must be used with --cache",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--protein"
            },
            "sbg:category": "Identifiers",
            "id": "#protein",
            "label": "Protein",
            "description": "Add the Ensembl protein identifier to the output where appropriate.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "None",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  var polyphen = $job.inputs.polyphen;\n  \n  var options = {\n    \"Prediction term\": \"p\",\n    \"Score\": \"s\",\n    \"Both\": \"b\",\n  }\n  \n  if (polyphen && polyphen != \"None\"){\n    return options[polyphen]\n  }\n}"
              },
              "prefix": "--polyphen"
            },
            "sbg:category": "Output options",
            "id": "#polyphen",
            "label": "Polyphen",
            "description": "Human only PolyPhen is a tool which predicts possible impact of an amino acid substitution on the structure and function of a human protein using straightforward physical and comparative considerations. The VEP can output the prediction term, score or both. The VEP uses the humVar score by default - use --humdiv to retrieve the humDiv score.",
            "type": [
              "null",
              {
                "symbols": [
                  "Prediction term",
                  "Score",
                  "Both"
                ],
                "type": "enum",
                "name": "polyphen"
              }
            ]
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--pick_order"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#pick_order",
            "label": "Pick order",
            "description": "Customise the order of criteria applied when choosing a block of annotation data with e.g. --pick.",
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
                "type": "enum",
                "name": "pick_order"
              }
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--pick_allele"
            },
            "id": "#pick_allele",
            "label": "Pick allele",
            "description": "Like --pick, but chooses one line or block of consequence data per variant allele. Will only differ in behaviour from --pick when the input variant has multiple alternate alleles.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--pick"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#pick",
            "label": "Pick",
            "description": "Pick once line or block of consequence data per variant, including transcript-specific columns. Consequences are chosen according to the criteria described here, and the order the criteria are applied may be customised with --pick_order. This is the best method to use if you are interested only in one consequence per variant.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--phased"
            },
            "sbg:category": "Output options",
            "id": "#phased",
            "label": "Phased",
            "description": "Force VCF genotypes to be interpreted as phased. For use with plugins that depend on phased data.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--per_gene"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#per_gene",
            "label": "Per gene",
            "description": "Output only the most severe consequence per gene. The transcript selected is arbitrary if more than one has the same predicted consequence. Uses the same ranking system as --pick.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--old_maf"
            },
            "sbg:category": "Co-located variants",
            "id": "#old_maf",
            "label": "Old MAF",
            "description": "For --maf_1kg and --maf_esp report only the frequency (no allele) and convert this frequency so it is always a minor frequency, i.e. < 0.5",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--numbers"
            },
            "sbg:category": "Output options",
            "id": "#numbers",
            "label": "Numbers",
            "description": "Adds affected exon and intron numbering to to output. Format is Number/Total.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "8",
            "sbg:category": "Other options",
            "id": "#number_of_cpus",
            "label": "Number of CPUs to use",
            "description": "Number of CPUs to use for execution.",
            "type": [
              "null",
              "int"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--no_whole_genome"
            },
            "sbg:category": "Advanced options",
            "id": "#no_whole_genome",
            "label": "No whole genome",
            "description": "Force the script to run in non-whole-genome mode. This was the original default mode for the VEP script, but has now been superceded by whole-genome mode, which is the default. In this mode, variants are analysed one at a time, with no caching of transcript data.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--no_stats"
            },
            "sbg:category": "Input options",
            "id": "#no_stats",
            "label": "No stats",
            "description": "Don't generate a stats file.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--no_intergenic"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#no_intergenic",
            "label": "No intergenic",
            "description": "Do not include intergenic consequences in the output.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--no_escape"
            },
            "sbg:category": "Output options",
            "id": "#no_escape",
            "label": "No escape",
            "description": "Don't URI escape HGVS strings.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--most_severe"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#most_severe",
            "label": "Most severe",
            "description": "Output only the most severe consequence per variation. Transcript-specific columns will be left blank.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--minimal"
            },
            "sbg:category": "Data format options",
            "id": "#minimal",
            "label": "Minimal",
            "description": "Convert alleles to their most minimal representation before consequence calculation i.e. sequence that is identical between each pair of reference and alternate alleles is trimmed off from both ends, with coordinates adjusted accordingly. Note this may lead to discrepancies between input coordinates and coordinates reported by the VEP relative to transcript sequences; to avoid issues, use --allele_number and/or ensure that your input variants have unique identifiers. The MINIMISED flag is set in the VEP output where relevant.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--merged"
            },
            "sbg:category": "Database options",
            "id": "#merged",
            "label": "Merged",
            "description": "Use the merged Ensembl and RefSeq cache. Consequences are flagged with the SOURCE of each transcript used.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "15000",
            "sbg:category": "Other options",
            "id": "#memory_for_job",
            "label": "Memory for job",
            "description": "Assign memory for the execution in MB.",
            "type": [
              "null",
              "int"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--maf_exac"
            },
            "sbg:category": "Co-located variants",
            "id": "#maf_exac",
            "label": "MAF ExAC",
            "description": "Include allele frequency from ExAC project populations. Note the reported allele(s) and frequencies are for the non-reference allele from the originial data, not necessarily the alternate allele from user input. Must be used with --cache",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--maf_esp"
            },
            "sbg:category": "Co-located variants",
            "id": "#maf_esp",
            "label": "MAF ESP",
            "description": "Include allele frequency from NHLBI-ESP populations. Note the reported allele(s) and frequencies are for the non-reference allele from the originial data, not necessarily the alternate allele from user input. Must be used with --cache.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--maf_1kg"
            },
            "sbg:category": "Co-located variants",
            "id": "#maf_1kg",
            "label": "MAF 1Kg",
            "description": "Add allele frequency from continental populations (AFR,AMR,ASN,EUR) of 1000 Genomes Phase 1 to the output. Note the reported allele(s) and frequencies are for the non-reference allele from the original data, not necessarily the alternate allele from user input. Must be used with --cache",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "sbg:category": "LOFTEE plugin",
            "id": "#loftee_plugin",
            "label": "LOFTEE plugin",
            "description": "A VEP plugin to identify LoF (loss-of-function) variation.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "15",
            "sbg:category": "LOFTEE plugin",
            "id": "#loftee_min_intron_size",
            "label": "LOFTEE minimum intron size",
            "description": "Minimum intron size, below which a variant should be filtered.",
            "type": [
              "null",
              "int"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:fileTypes": "FA.GZ",
            "inputBinding": {
              "secondaryFiles": [
                ".fai",
                ".gzi"
              ],
              "sbg:cmdInclude": true
            },
            "sbg:category": "LOFTEE plugin",
            "id": "#loftee_human_ancestor_fa",
            "label": "LOFTEE human ancestor FA",
            "description": "samtools 1.x uses bgzipped inputs for samtools faidx and downloads are available here: https://s3.amazonaws.com/bcbio_nextgen/human_ancestor.fa.gz, https://s3.amazonaws.com/bcbio_nextgen/human_ancestor.fa.gz.fai, https://s3.amazonaws.com/bcbio_nextgen/human_ancestor.fa.gz.gzi. If this flag is set to 'false', the ancestral allele will not be checked and filtered.",
            "type": [
              "null",
              "File"
            ],
            "required": false
          },
          {
            "sbg:toolDefaultValue": "0.05",
            "sbg:category": "LOFTEE plugin",
            "id": "#loftee_filter_position",
            "label": "LOFTEE filter position",
            "description": "Position in transcript where a variant should be filtered. Default is 0.05, corresponding to last 5% of transcript.",
            "type": [
              "null",
              "float"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "fast",
            "sbg:category": "LOFTEE plugin",
            "id": "#loftee_fast_length_calculation",
            "label": "LOFTEE fast length calculation",
            "description": "The Ensembl API can be used to calculate transcript length in two different methods: one approximate (fast; usually within 3 bp of correct length) and one perfect (slow).",
            "type": [
              "null",
              {
                "symbols": [
                  "fast",
                  "slow"
                ],
                "type": "enum",
                "name": "loftee_fast_length_calculation"
              }
            ],
            "sbg:stageInput": null
          },
          {
            "id": "#loftee_conservation_file",
            "sbg:category": "LOFTEE plugin",
            "sbg:fileTypes": "SQL",
            "label": "LOFTEE Conservation File",
            "description": "Conservation database for LOFTEE plugin.",
            "type": [
              "null",
              "File"
            ],
            "required": false
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--keep_csq"
            },
            "sbg:category": "Output options",
            "id": "#keep_csq",
            "label": "Keep CSQ",
            "description": "Don't overwrite existing CSQ entry in VCF INFO field.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--json"
            },
            "sbg:category": "Data format options",
            "id": "#json",
            "label": "Output as JSON file",
            "description": "Write output in JSON format.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:fileTypes": "VCF TXT",
            "inputBinding": {
              "separate": true,
              "position": 0,
              "sbg:cmdInclude": true,
              "prefix": "--input_file"
            },
            "sbg:category": "Input options",
            "id": "#input_file",
            "label": "Input file name",
            "required": true,
            "description": "Input file name. If not specified, the script will attempt to read from STDIN.",
            "sbg:altPrefix": "-i",
            "type": [
              "File"
            ]
          },
          {
            "inputBinding": {
              "separate": true,
              "itemSeparator": null,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--individual"
            },
            "sbg:category": "Output options",
            "id": "#individual",
            "label": "Individual",
            "description": "Consider only alternate alleles present in the genotypes of the specified individual(s). May be a single individual, a comma-separated list or \"all\" to assess all individuals separately. Individual variant combinations homozygous for the given reference allele will not be reported. Each individual and variant combination is given on a separate line of output. Only works with VCF files containing individual genotype data; individual IDs are taken from column headers.",
            "type": [
              "null",
              {
                "name": "individual",
                "items": "string",
                "type": "array"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--humdiv"
            },
            "sbg:category": "Output options",
            "id": "#humdiv",
            "label": "Humdiv",
            "description": "Human only Retrieve the humDiv PolyPhen prediction instead of the defaulat humVar.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--html"
            },
            "id": "#html",
            "label": "HTML",
            "description": "Generate an additional HTML version of the output file containing hyperlinks to Ensembl and other resources. File name of this file is [output_file].html. In order for this feature to work properly you will have to set VEP's to \"default\" (text) format and place that output in the same folder as this HTML file.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--hgvs"
            },
            "sbg:category": "Identifiers",
            "id": "#hgvs",
            "label": "HGVS",
            "description": "Add HGVS nomenclature based on Ensembl stable identifiers to the output. Both coding and protein sequence names are added where appropriate. To generate HGVS identifiers when using --cache or --offline you must use a FASTA file and --fasta.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--gvf"
            },
            "sbg:category": "Data format options",
            "id": "#gvf",
            "label": "Output as GVF file",
            "description": "Writes output in GVF format.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--gmaf"
            },
            "id": "#gmaf",
            "label": "GMAF",
            "description": "Add the global minor allele frequency (MAF) from 1000 Genomes Phase 1 data for any existing variant to the output.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--gene_phenotype"
            },
            "sbg:category": "Output options",
            "id": "#gene_phenotype",
            "label": "Gene phenotype",
            "description": "Indicates if the overlapped gene is associated with a phenotype, disease or trait. See list of phenotype sources.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--gencode_basic"
            },
            "sbg:category": "Database options",
            "id": "#gencode_basic",
            "label": "Gencode basic",
            "description": "Limit your analysis to transcripts belonging to the GENCODE basic set. This set has fragmented or problematic transcripts removed.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--freq_pop"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#freq_pop",
            "label": "Frequency population",
            "description": "Turns on frequency filtering. Use this to include or exclude variants based on the frequency of co-located existing variants in the Ensembl Variation database. You must also specify all of the --freq flags below. Using this option requires a database connection - while it can be used with --cache, the database will still be accessed to retrieve frequency data. Frequencies used in filtering are added to the output under the FREQS key in the Extra field. 1kg_all - 1000 genomes combined population (global); 1kg_afr - 1000 genomes combined African populations (also amr, asn, eur); 1kg_chb - 1000 genomes CHB population; hapmap_yri - HapMap YRI population; 1kg - Any 1000 genomes phase 1 population; ceu - Any of HapMap or 1000 genomes CEU populations; any - Any HapMap or 1000 genomes population.",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  var option=$job.inputs.freq_gt_lt;\n  if(option==\"Greater than freq_freq\")\n    return \"gt\";\n  else if(option==\"Less than freq_freq\")\n    return \"lt\";\n}"
              },
              "prefix": "--freq_gt_lt"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#freq_gt_lt",
            "label": "Frequency GT/LT",
            "description": "Specify whether the frequency of the co-located variant must be greater than (gt) or less than (lt) the value specified with --freq_freq",
            "type": [
              "null",
              {
                "symbols": [
                  "Greater than freq_freq",
                  "Less than freq_freq"
                ],
                "type": "enum",
                "name": "freq_gt_lt"
              }
            ]
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--freq_freq"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#freq_freq",
            "label": "Freq freq",
            "description": "Minor allele frequency to use for filtering. Must be a float value between 0 and 0.5.",
            "type": [
              "null",
              "float"
            ]
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--freq_filter"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#freq_filter",
            "label": "Freq filter",
            "description": "Specify whether to exclude or include only variants that pass the frequency filter",
            "type": [
              "null",
              {
                "symbols": [
                  "exclude",
                  "include"
                ],
                "type": "enum",
                "name": "freq_filter"
              }
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "Auto-detects",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--format"
            },
            "sbg:category": "Input options",
            "id": "#format",
            "label": "Format",
            "description": "Input file format - one of \"ensembl\", \"vcf\", \"pileup\", \"hgvs\", \"id\". By default, the script auto-detects the input file format. Using this option you can force the script to read the input file as Ensembl, VCF, pileup or HGVS format, a list of variant identifiers (e.g. rsIDs from dbSNP), or the output from the VEP (e.g. to add custom annotation to an existing results file using --custom).",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "sbg:toolDefaultValue": "1",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--fork"
            },
            "sbg:category": "Basic options",
            "id": "#fork",
            "label": "Fork",
            "description": "Enable forking, using the specified number of forks. Forking can dramatically improve the runtime of the script.",
            "type": [
              "null",
              "int"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--force_overwrite"
            },
            "sbg:category": "Input options",
            "id": "#force_overwrite",
            "label": "Force overwrite",
            "description": "By default, the script will fail with an error if the output file already exists. You can force the overwrite of the existing file by using this flag.",
            "sbg:altPrefix": "--force",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--flag_pick_allele"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#flag_pick_allele",
            "label": "Flag pick allele",
            "description": "As per --pick_allele, but adds the PICK flag to the chosen block of consequence data and retains others.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--flag_pick"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#flag_pick",
            "label": "Flag pick",
            "description": "As per --pick, but adds the PICK flag to the chosen block of consequence data and retains others.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--filter_common"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#filter_common",
            "label": "Filter common",
            "description": "Shortcut flag for the filters - this will exclude variants that have a co-located existing variant with global MAF > 0.01 (1%). May be modified using any of the following freq_* filters. For human, this can be used in offline mode for the following populations: 1KG_ALL, 1KG_AFR, 1KG_AMR, 1KG_ASN, 1KG_EUR.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "inputBinding": {
              "separate": true,
              "itemSeparator": ",",
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--fields"
            },
            "sbg:category": "Data format options",
            "id": "#fields",
            "label": "Fields",
            "description": "Configure the output format using a comma separated list of fields. Fields may be those present in the default output columns, or any of those that appear in the Extra column (including those added by plugins or custom annotations). Output remains tab-delimited.",
            "type": [
              "null",
              {
                "name": "fields",
                "items": "string",
                "type": "array"
              }
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:fileTypes": "FASTA, FA",
            "inputBinding": {
              "separate": true,
              "itemSeparator": null,
              "position": 0,
              "sbg:cmdInclude": true,
              "prefix": "--fasta"
            },
            "sbg:category": "Cache options",
            "id": "#fasta",
            "label": "Fasta file(s) to use to look up reference sequence",
            "required": false,
            "description": "Specify a FASTA file or a directory containing FASTA files to use to look up reference sequence. The first time you run the script with this parameter an index will be built which can take a few minutes. This is required if fetching HGVS annotations (--hgvs) or checking reference sequences (--check_ref) in offline mode (--offline), and optional with some performance increase in cache mode (--cache).",
            "type": [
              "null",
              {
                "name": "fasta",
                "items": "File",
                "type": "array"
              }
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "Exclude",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  var failed=$job.inputs.failed;\n  if(failed && failed==\"Include\")\n    return \"1\";\n}"
              },
              "prefix": "--failed"
            },
            "sbg:category": "Co-located variants",
            "id": "#failed",
            "label": "Failed",
            "description": "When checking for co-located variants, by default the script will exclude variants that have been flagged as failed. Set this flag to include such variants.",
            "type": [
              "null",
              {
                "symbols": [
                  "Exclude",
                  "Include"
                ],
                "type": "enum",
                "name": "failed"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--everything"
            },
            "sbg:category": "Basic options",
            "id": "#everything",
            "label": "Everything",
            "description": "Shortcut flag to switch on all of the following:  --sift b, --polyphen b, --ccds, --uniprot, --hgvs, --symbol, --numbers, --domains, --regulatory, --canonical, --protein, --biotype, --uniprot, --tsl, --appris, --gene_phenotype --gmaf, --maf_1kg, --maf_esp, --maf_esp, --pubmed, --variant_class",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--dont_skip"
            },
            "sbg:category": "Input options",
            "id": "#dont_skip",
            "label": "Dont skip",
            "description": "Don't skip input variants that fail validation, e.g. those that fall on unrecognised sequences.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--domains"
            },
            "sbg:category": "Output options",
            "id": "#domains",
            "label": "Domains",
            "description": "Adds names of overlapping protein domains to output.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:fileTypes": "BED,GFF,GTF,VCF,bigWig",
            "inputBinding": {
              "separate": true,
              "itemSeparator": null,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--custom"
            },
            "sbg:category": "Output options",
            "id": "#custom",
            "label": "Custom annotations files",
            "description": "Add custom annotation to the output. Files must be tabix indexed or in the bigWig format. Multiple files can be specified by supplying the --custom flag multiple times. See here for full details.",
            "type": [
              "null",
              {
                "name": "custom",
                "items": "File",
                "type": "array"
              }
            ],
            "required": false
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--convert"
            },
            "sbg:category": "Data format options",
            "id": "#convert",
            "label": "Convert",
            "description": "Converts the input file to the specified format (one of \"ensembl\", \"vcf\", \"pileup\"). See documentation for more details. Converted output is written to the file specified with --output_file.",
            "type": [
              "null",
              {
                "symbols": [
                  "ensembl",
                  "vcf",
                  "pileup"
                ],
                "type": "enum",
                "name": "convert"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--coding_only"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#coding_only",
            "label": "Coding only",
            "description": "Only return consequences that fall in the coding regions of transcripts.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "inputBinding": {
              "separate": true,
              "itemSeparator": ",",
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--chr"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#chr",
            "label": "Chromosomes",
            "description": "Select a subset of chromosomes to analyse from your file. Any data not on this chromosome in the input will be skipped. The list can be comma separated, with \"-\" characters representing an interval. For example, to include chromsomes 1, 2, 3, 10 and X you could use --chr 1-3,10,X",
            "type": [
              "null",
              {
                "name": "chr",
                "items": "string",
                "type": "array"
              }
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--check_ref"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#check_ref",
            "label": "Check ref",
            "description": "Force the script to check the supplied reference allele against the sequence stored in the Ensembl Core database. Lines that do not match are skipped.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--check_existing"
            },
            "sbg:category": "Co-located variants",
            "id": "#check_existing",
            "label": "Check existing",
            "description": "Checks for the existence of known variants that are co-located with your input. By default the alleles are not compared - to do so, use --check_alleles.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--check_alleles"
            },
            "sbg:category": "Co-located variants",
            "id": "#check_alleles",
            "label": "Check alleles",
            "description": "When checking for existing variants, only report a co-located variant if none of the alleles supplied are novel. For example, if the user input has alleles A/G, and an existing co-located variant has alleles A/C, the co-located variant will not be reported.  Strand is also taken into account - in the same example, if the user input has alleles T/G but on the negative strand, then the co-located variant will be reported since its alleles match the reverse complement of user input.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--cell_type"
            },
            "sbg:category": "Output options",
            "id": "#cell_type",
            "label": "Cell type",
            "description": "Report only regulatory regions that are found in the given cell type(s). Can be a single cell type or a comma-separated list. The functional type in each cell type is reported under CELL_TYPE in the output. To retrieve a list of cell types, use --cell_type list.",
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
                "type": "enum",
                "name": "cell_type"
              }
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--ccds"
            },
            "sbg:category": "Identifiers",
            "id": "#ccds",
            "label": "CCDS",
            "description": "Adds the CCDS transcript identifer (where available) to the output.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--canonical"
            },
            "sbg:category": "Identifiers",
            "id": "#canonical",
            "label": "Canonical",
            "description": "Adds a flag indicating if the transcript is the canonical transcript for the gene.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "5000",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--buffer_size"
            },
            "sbg:category": "Advanced options",
            "id": "#buffer_size",
            "label": "Buffer size",
            "description": "Sets the internal buffer size, corresponding to the number of variations that are read in to memory simultaneously. Set this lower to use less memory at the expense of longer run time, and higher to use more memory with a faster run time.",
            "type": [
              "null",
              "int"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--biotype"
            },
            "sbg:category": "Identifiers",
            "id": "#biotype",
            "label": "Biotype",
            "description": "Adds the biotype of the transcript or regulatory feature.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "Use found assembly version",
            "inputBinding": {
              "separate": true,
              "position": 0,
              "sbg:cmdInclude": true,
              "prefix": "--assembly"
            },
            "sbg:category": "Input options",
            "id": "#assembly",
            "label": "Assembly version",
            "description": "Select the assembly version to use if more than one available. If using the cache, you must have the appropriate assembly's cache file installed. If not specified and you have only 1 assembly version installed, this will be chosen by default. For homo sapiens use either GRCh38 or GRCh37.",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--appris"
            },
            "id": "#appris",
            "label": "APPRIS",
            "description": "Adds the APPRIS isoform annotation for this transcript to the output.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--allow_non_variant"
            },
            "sbg:category": "Filtering and QC options",
            "id": "#allow_non_variant",
            "label": "Allow non variant",
            "description": "When using VCF format as input and output, by default the VEP will skip non-variant lines of input (where the ALT allele is null). Enabling this option the lines will be printed in the VCF output with no consequence data added.",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--allele_number"
            },
            "sbg:category": "Output options",
            "id": "#allele_number",
            "label": "Allele number",
            "description": "Identify allele number from VCF input, where 1 = first ALT allele, 2 = second ALT allele etc.",
            "type": [
              "null",
              "boolean"
            ]
          },
          {
            "sbg:toolDefaultValue": "False",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "--all_refseq"
            },
            "sbg:category": "Database options",
            "id": "#all_refseq",
            "label": "All refseq",
            "description": "When using the RefSeq or merged cache, include e.g. CCDS and Ensembl EST transcripts in addition to those from RefSeq (see documentation). Only works when using --refseq or --merged",
            "type": [
              "null",
              "boolean"
            ],
            "sbg:stageInput": null
          }
        ],
        "sbg:createdBy": "snamburi3",
        "sbg:revisionsInfo": [
          {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458162487,
            "sbg:modifiedBy": "snamburi3"
          }
        ],
        "id": "gauravCGC/jax-sbg/variant-effect-predictor-83/0",
        "sbg:toolkit": "ensembl-tools",
        "stdout": "",
        "sbg:categories": [
          "VCF-Processing",
          "Annotation"
        ],
        "description": "The VEP determines the effect of your variants (SNPs, insertions, deletions, CNVs or structural variants) on genes, transcripts, and protein sequence, as well as regulatory regions. Using it, you can find out the:\n\n* genes and transcripts affected by the variants\n\n* location of the variants (e.g. upstream of a transcript, in coding sequence, in non-coding RNA, in regulatory regions)\n\n* consequence of your variants on the protein sequence (e.g. stop gained, missense, stop lost, frameshift)\n\n* known variants that match yours, and associated minor allele frequencies from the 1000 Genomes Project\n\n* SIFT and PolyPhen scores for changes to protein sequence\n\n**Important note:** This tool is always working in offline mode, meaning that you will have to provide species cache file and you will not be able to establish any database connection. In addition, features (parameters) that require database connection were not added to the platform. Unpacking archived cache files is included in the tool.",
        "sbg:toolkitVersion": "83",
        "requirements": [
          {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
              {
                "class": "DockerRequirement",
                "dockerPull": "rabix/js-engine"
              }
            ]
          }
        ],
        "x": 205.00020651023394,
        "sbg:sbgMaintained": false,
        "outputs": [
          {
            "sbg:fileTypes": "TEXT, JSON, VCF, GVF",
            "id": "#vep_output",
            "label": "VEP output file",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "sbg:inheritMetadataFrom": "#input_file",
              "glob": "{*.vep.vcf,*.vep.json,*.vep.gvf,*.vep.txt}"
            }
          },
          {
            "sbg:fileTypes": "HTML",
            "id": "#html_summary",
            "label": "HTML summary file",
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
            "id": "#html_output",
            "label": "HTML output file",
            "description": "Works only when output is in \"default\" (text) format. Doesn't work for VCF output.",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "{*.vep.vcf.html,*.vep.json.html,*.vep.gvf.html,*.vep.txt.html}"
            }
          }
        ],
        "sbg:links": [
          {
            "id": "http://uswest.ensembl.org/info/docs/tools/vep/index.html",
            "label": "Homepage"
          },
          {
            "id": "https://github.com/Ensembl/ensembl-tools/tree/release/83/scripts/variant_effect_predictor",
            "label": "Source Code"
          },
          {
            "id": "https://en.wikipedia.org/wiki/Ensembl_Genomes#Variant_Effect_Predictor",
            "label": "Wiki"
          },
          {
            "id": "https://github.com/Ensembl/ensembl-tools/archive/release/83.zip",
            "label": "Download"
          },
          {
            "id": "http://www.ncbi.nlm.nih.gov/pubmed/20562413",
            "label": "Publication"
          },
          {
            "id": "http://uswest.ensembl.org/info/docs/tools/vep/script/index.html?redirect=no#contents",
            "label": "Documentation"
          },
          {
            "id": "ftp://ftp.ensembl.org/pub/release-83/variation/VEP/",
            "label": "Cache files"
          }
        ],
        "stdin": "",
        "sbg:modifiedBy": "snamburi3",
        "sbg:toolAuthor": "McLaren et. al.",
        "sbg:latestRevision": 0,
        "sbg:modifiedOn": 1458162487,
        "y": 405.00025012758994,
        "sbg:cmdPreview": "tar xfz /path/to/species_cache_file.ext -C /opt/variant_effect_predictor_83/cache && perl /opt/variant_effect_predictor_83/ensembl-tools-release-83/scripts/variant_effect_predictor/variant_effect_predictor.pl     --input_file /path/to/input_file.ext --dir /opt/variant_effect_predictor_83/cache  --offline --output_file input_file.vep.json  --stats_file input_file.vep.json_summary.html  --port 3337  --plugin LoF,conservation_file:/path/to/conservation_file.ext,human_ancestor_fa:/path/to/loftee_human_ancestor_fa.ext,filter_position:5,min_intron_size:100,fast_length_calculation:slow",
        "sbg:id": "gauravCGC/jax-sbg/variant-effect-predictor-83/0",
        "sbg:image_url": null,
        "successCodes": [],
        "class": "CommandLineTool",
        "sbg:createdOn": 1458162487,
        "sbg:license": "Apache License 2.0",
        "sbg:job": {
          "allocatedResources": {
            "cpu": 6,
            "mem": 15000
          },
          "inputs": {
            "json": true,
            "buffer_size": 3,
            "species_cache_file": {
              "path": "/path/to/species_cache_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "loftee_min_intron_size": 100,
            "appris": true,
            "allow_non_variant": true,
            "no_escape": true,
            "polyphen": null,
            "all_refseq": true,
            "loftee_human_ancestor_fa": {
              "path": "/path/to/loftee_human_ancestor_fa.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "filter_common": true,
            "format": "format-string-value",
            "custom": [
              {
                "path": "/path/to/custom-1.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
              },
              {
                "path": "/path/to/custom-2.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
              }
            ],
            "freq_freq": 0.4662053742977994,
            "gene_phenotype": true,
            "fork": 4,
            "minimal": true,
            "keep_csq": true,
            "sift": null,
            "variant_class": true,
            "no_stats": false,
            "html": true,
            "vcf_info_field": "Other",
            "flag_pick": true,
            "number_of_cpus": 6,
            "input_file": {
              "path": "/path/to/input_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "total_length": true,
            "maf_1kg": true,
            "maf_esp": true,
            "freq_gt_lt": "Greater than freq_freq",
            "merged": true,
            "biotype": true,
            "individual": [
              "individual-string-value-1",
              "individual-string-value-2"
            ],
            "assembly": "GRCh37",
            "loftee_filter_position": 5,
            "freq_pop": "freq_pop-string-value",
            "species": "species-string-value",
            "canonical": true,
            "numbers": true,
            "loftee_conservation_file": {
              "path": "/path/to/conservation_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "everything": true,
            "gvf": true,
            "fasta": [
              {
                "path": "/path/to/fasta-1.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
              },
              {
                "path": "/path/to/fasta-2.ext",
                "class": "File",
                "size": 0,
                "secondaryFiles": []
              }
            ],
            "pick_allele": true,
            "vcf": false,
            "force_overwrite": true,
            "maf_exac": true,
            "uniprot": true,
            "convert": "ensembl",
            "fields": [
              "fields-string-value-1",
              "fields-string-value-2"
            ],
            "shift_hgvs": "Disable",
            "xref_refseq": true,
            "freq_filter": "exclude",
            "most_severe": true,
            "check_ref": true,
            "ccds": true,
            "failed": "Include",
            "allele_number": true,
            "refseq": true,
            "coding_only": true,
            "humdiv": true,
            "protein": true,
            "no_intergenic": true,
            "no_whole_genome": true,
            "chr": [
              "chr-string-value-1",
              "chr-string-value-2"
            ],
            "summary": true,
            "loftee_plugin": true,
            "check_alleles": true,
            "hgvs": true,
            "pick_order": "canonical",
            "per_gene": true,
            "cell_type": null,
            "check_existing": true,
            "gencode_basic": true,
            "dont_skip": true,
            "phased": true,
            "old_maf": true,
            "vcf_info_field_other": "Ojsa",
            "pick": true,
            "domains": true,
            "pubmed": true,
            "regulatory": true,
            "flag_pick_allele": true,
            "loftee_fast_length_calculation": "slow",
            "tsl": true,
            "symbol": true,
            "gmaf": true,
            "memory_for_job": 0,
            "terms": "ensembl"
          }
        },
        "sbg:revision": 0,
        "label": "Variant Effect Predictor",
        "arguments": [
          {
            "separate": true,
            "position": 1,
            "prefix": "--dir",
            "valueFrom": "/opt/variant_effect_predictor_83/cache"
          },
          {
            "separate": true,
            "position": 1,
            "valueFrom": "--offline"
          },
          {
            "separate": true,
            "position": 100,
            "valueFrom": {
              "class": "Expression",
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.loftee_plugin && $job.inputs.loftee_conservation_file){\n    var command=\"--plugin LoF,conservation_file:\"+$job.inputs.loftee_conservation_file.path;\n    if($job.inputs.loftee_human_ancestor_fa)\n      command+=\",human_ancestor_fa:\"+$job.inputs.loftee_human_ancestor_fa.path;\n    if($job.inputs.loftee_filter_position)\n      command+=\",filter_position:\"+$job.inputs.loftee_filter_position;\n    if($job.inputs.loftee_min_intron_size)\n      command+=\",min_intron_size:\"+$job.inputs.loftee_min_intron_size;\n    if($job.inputs.loftee_fast_length_calculation==\"slow\")\n      command+=\",fast_length_calculation:slow\";\n    if($job.inputs.loftee_check_complete_cds)\n      command+=\",check_comlete_cds\";\n    return command;\n  }\n}"
            }
          },
          {
            "separate": true,
            "position": 1,
            "prefix": "--output_file",
            "valueFrom": {
              "class": "Expression",
              "engine": "#cwl-js-engine",
              "script": "{\n  var fileName=$job.inputs.input_file.path.replace(/^.*[\\\\\\/]/, '');\n  fileName=fileName.substr(0,fileName.lastIndexOf(\".\"));\n  if($job.inputs.vcf)\n    return fileName+\".vep.vcf\";\n  else if($job.inputs.json)\n    return fileName+\".vep.json\";\n  else if($job.inputs.gvf)\n    return fileName+\".vep.gvf\";\n  else \n    return fileName+\".vep.txt\";\n}"
            }
          },
          {
            "separate": true,
            "position": 1,
            "prefix": "",
            "valueFrom": {
              "class": "Expression",
              "engine": "#cwl-js-engine",
              "script": "{\n  if(!$job.inputs.no_stats){\n  \tvar fileName=$job.inputs.input_file.path.replace(/^.*[\\\\\\/]/, '');\n    fileName=fileName.substr(0,fileName.lastIndexOf(\".\"));\n  \tif($job.inputs.vcf)\n      return \"--stats_file \"+fileName+\".vep.vcf_summary.html\";\n    else if($job.inputs.json)\n      return \"--stats_file \"+fileName+\".vep.json_summary.html\";\n    else if($job.inputs.gvf)\n      return \"--stats_file \"+fileName+\".vep.gvf_summary.html\";\n    else \n      return \"--stats_file \"+fileName+\".vep.txt_summary.html\";\n  }\n  else return \"\";\n}"
            }
          },
          {
            "separate": true,
            "position": 1,
            "prefix": "",
            "valueFrom": {
              "class": "Expression",
              "engine": "#cwl-js-engine",
              "script": "{\n  if($job.inputs.assembly==\"GRCh37\" || $job.inputs.assembly==\"grch37\")\n    return \"--port 3337\";\n}"
            }
          }
        ],
        "sbg:validationErrors": [],
        "temporaryFailCodes": [],
        "sbg:project": "gauravCGC/jax-sbg",
        "sbg:contributors": [
          "snamburi3"
        ]
      },
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
          "id": "#Variant_Effect_Predictor.vcf",
          "source": [
            "#vcf"
          ]
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
          "id": "#Variant_Effect_Predictor.species_cache_file",
          "source": [
            "#input_reference_file"
          ]
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
          "id": "#Variant_Effect_Predictor.input_file",
          "source": [
            "#input_file"
          ]
        },
        {
          "id": "#Variant_Effect_Predictor.individual"
        },
        {
          "id": "#Variant_Effect_Predictor.humdiv"
        },
        {
          "id": "#Variant_Effect_Predictor.html",
          "source": [
            "#html"
          ]
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
          "id": "#Variant_Effect_Predictor.filter_common",
          "source": [
            "#filter_common"
          ]
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
      "hints": [
        {
          "class": "sbg:AWSInstanceType",
          "value": "r3.2xlarge"
        }
      ],
      "sbg:x": 205.00020651023394,
      "sbg:y": 405.00025012758994
    },
    {
      "id": "#hlaminer",
      "run": {
        "stdout": "",
        "sbg:validationErrors": [],
        "baseCommand": [
          "/usr/local/bin/HLAminer_v1.3/bin/HLAminer.pl"
        ],
        "inputs": [
          {
            "sbg:toolDefaultValue": "500",
            "inputBinding": {
              "separate": true,
              "position": 2,
              "sbg:cmdInclude": true,
              "prefix": "-s"
            },
            "id": "#minimum_score",
            "description": "minimum score",
            "type": [
              "null",
              {
                "symbols": [
                  "500"
                ],
                "type": "enum",
                "name": "minimum_score"
              }
            ],
            "sbg:stageInput": null
          },
          {
            "id": "#label_run_name",
            "type": [
              "null",
              "string"
            ],
            "inputBinding": {
              "separate": true,
              "position": 2,
              "sbg:cmdInclude": true,
              "prefix": "-l"
            }
          },
          {
            "sbg:fileTypes": "SAM",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "-a"
            },
            "id": "#input_sam_file",
            "label": "input.sam",
            "description": "sam alignments file",
            "type": [
              "File"
            ],
            "required": true
          },
          {
            "sbg:fileTypes": "FASTA",
            "sbg:toolDefaultValue": "/usr/local/bin/HLAminer_v1.3/database/HLA-I_II_GEN.fasta",
            "inputBinding": {
              "separate": true,
              "itemSeparator": null,
              "position": 3,
              "sbg:cmdInclude": true,
              "prefix": "-h"
            },
            "id": "#input_allele_database",
            "label": "database.fasta",
            "description": "hlaminer fasta file",
            "type": [
              "File"
            ],
            "required": true
          },
          {
            "sbg:toolDefaultValue": "1",
            "inputBinding": {
              "separate": true,
              "position": 5,
              "sbg:cmdInclude": true,
              "prefix": "-e"
            },
            "id": "#bool_single_end_reads_used",
            "label": "bool",
            "description": "single-end reads used (1=yes/0=no)",
            "type": [
              "null",
              "int"
            ],
            "sbg:stageInput": null
          }
        ],
        "sbg:createdBy": "snamburi3",
        "sbg:revisionsInfo": [
          {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458269612,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458067676,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458067682,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458138684,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458139414,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1458685026,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1458684831,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1458705428,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1458738766,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1458748258,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1458755110,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1458755135,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1458755105,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1458755763,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 14,
            "sbg:modifiedOn": 1458766142,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 15,
            "sbg:modifiedOn": 1460227007,
            "sbg:modifiedBy": "snamburi3"
          }
        ],
        "id": "gauravCGC/jax-sbg/hlaminer/15",
        "label": "hlaminer",
        "description": "",
        "requirements": [],
        "x": 904.0004631678438,
        "sbg:sbgMaintained": false,
        "stdin": "",
        "sbg:modifiedBy": "snamburi3",
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
        "sbg:modifiedOn": 1460227007,
        "y": 177.33342169391116,
        "sbg:cmdPreview": "/usr/local/bin/HLAminer_v1.3/bin/HLAminer.pl -a /path/to/sam_alignments_file.ext -h /path/to/input_database_file.ext",
        "sbg:id": "gauravCGC/jax-sbg/hlaminer/15",
        "sbg:image_url": null,
        "successCodes": [],
        "sbg:project": "gauravCGC/jax-sbg",
        "hints": [
          {
            "class": "sbg:MemRequirement",
            "value": 1000
          },
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "hlaminer"
          },
          {
            "class": "sbg:CPURequirement",
            "value": 2
          }
        ],
        "class": "CommandLineTool",
        "sbg:revision": 15,
        "sbg:job": {
          "allocatedResources": {
            "cpu": 2,
            "mem": 1000
          },
          "inputs": {
            "label_run_name": "label_run_name-string-value",
            "bool_single_end_reads_used": 7,
            "input_sam_file": {
              "path": "/path/to/sam_alignments_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "minimum_score": "500",
            "input_allele_database": {
              "path": "/path/to/input_database_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            }
          }
        },
        "arguments": [],
        "temporaryFailCodes": [],
        "sbg:createdOn": 1458067676,
        "sbg:contributors": [
          "snamburi3"
        ]
      },
      "inputs": [
        {
          "id": "#hlaminer.minimum_score",
          "source": [
            "#minimum_score"
          ]
        },
        {
          "id": "#hlaminer.label_run_name",
          "source": [
            "#label_run_name"
          ]
        },
        {
          "id": "#hlaminer.input_sam_file",
          "source": [
            "#bwa_sampe.output_sam_file"
          ]
        },
        {
          "id": "#hlaminer.input_allele_database",
          "source": [
            "#input_allele_database"
          ]
        },
        {
          "id": "#hlaminer.bool_single_end_reads_used",
          "source": [
            "#bool_single_end_reads_used"
          ]
        }
      ],
      "outputs": [
        {
          "id": "#hlaminer.predictions_file"
        }
      ],
      "hints": [
        {
          "class": "sbg:AWSInstanceType",
          "value": "r3.2xlarge"
        }
      ],
      "sbg:x": 904.0004631678438,
      "sbg:y": 177.33342169391116
    },
    {
      "id": "#netmhcpan",
      "run": {
        "stdout": "",
        "sbg:validationErrors": [],
        "baseCommand": [
          "python",
          "netmhcpan_parser.py"
        ],
        "inputs": [
          {
            "sbg:fileTypes": "FSA",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true,
              "prefix": "-f"
            },
            "id": "#input_fsa",
            "label": "input_FSA",
            "description": "Input FSA File",
            "type": [
              "File"
            ],
            "required": true
          },
          {
            "sbg:fileTypes": "FASTA",
            "inputBinding": {
              "separate": true,
              "position": 3,
              "sbg:cmdInclude": true,
              "prefix": "-d"
            },
            "id": "#input_database_file",
            "label": "database.fasta",
            "description": "input reference file",
            "type": [
              "null",
              "File"
            ],
            "required": false
          },
          {
            "sbg:toolDefaultValue": "HLA-A0201",
            "inputBinding": {
              "separate": true,
              "position": 2,
              "sbg:cmdInclude": true,
              "prefix": "-hla"
            },
            "id": "#hla_allele_file",
            "required": false,
            "description": "HLA allele file",
            "type": [
              "null",
              "File"
            ],
            "sbg:stageInput": null
          }
        ],
        "sbg:createdBy": "snamburi3",
        "sbg:revisionsInfo": [
          {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458066580,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1457469527,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1457469557,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1458071773,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1458071865,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458067544,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458067610,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1458071617,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1458078297,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1458078361,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1458078436,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1458079137,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1458079488,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1458079615,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 14,
            "sbg:modifiedOn": 1458267475,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 15,
            "sbg:modifiedOn": 1458267833,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 16,
            "sbg:modifiedOn": 1458267891,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 42,
            "sbg:modifiedOn": 1460018432,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 43,
            "sbg:modifiedOn": 1460026103,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 20,
            "sbg:modifiedOn": 1459810239,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 28,
            "sbg:modifiedOn": 1459868870,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 21,
            "sbg:modifiedOn": 1459812304,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 23,
            "sbg:modifiedOn": 1459821598,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 22,
            "sbg:modifiedOn": 1459814906,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 31,
            "sbg:modifiedOn": 1459894780,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 17,
            "sbg:modifiedOn": 1459809579,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 19,
            "sbg:modifiedOn": 1459810122,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 24,
            "sbg:modifiedOn": 1459823812,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 29,
            "sbg:modifiedOn": 1459870909,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 18,
            "sbg:modifiedOn": 1459810073,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 25,
            "sbg:modifiedOn": 1459850386,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 26,
            "sbg:modifiedOn": 1459864822,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 27,
            "sbg:modifiedOn": 1459866891,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 30,
            "sbg:modifiedOn": 1459894752,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 35,
            "sbg:modifiedOn": 1459897978,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 32,
            "sbg:modifiedOn": 1459895160,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 33,
            "sbg:modifiedOn": 1459896324,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 34,
            "sbg:modifiedOn": 1459897531,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 36,
            "sbg:modifiedOn": 1459937511,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 49,
            "sbg:modifiedOn": 1460135154,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 37,
            "sbg:modifiedOn": 1459937562,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 38,
            "sbg:modifiedOn": 1459948071,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 39,
            "sbg:modifiedOn": 1459966371,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 40,
            "sbg:modifiedOn": 1459969634,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 41,
            "sbg:modifiedOn": 1459974280,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 45,
            "sbg:modifiedOn": 1460070161,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 47,
            "sbg:modifiedOn": 1460076154,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 46,
            "sbg:modifiedOn": 1460072312,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 44,
            "sbg:modifiedOn": 1460066742,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 48,
            "sbg:modifiedOn": 1460127043,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 50,
            "sbg:modifiedOn": 1460295395,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 52,
            "sbg:modifiedOn": 1460298894,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 51,
            "sbg:modifiedOn": 1460295479,
            "sbg:modifiedBy": "snamburi3"
          }
        ],
        "id": "gauravCGC/jax-sbg/netmhc/52",
        "label": "netmhcpan",
        "description": "",
        "requirements": [
          {
            "fileDef": [
              {
                "fileContent": "import re\nfrom Bio import SeqIO\nimport argparse\nfrom itertools import compress\nimport subprocess\nimport sys\nimport os\nfrom os.path import basename\nimport shutil\n\ndef process_hlaminer(input_file):\n    alleles = []\n    infile = open(input_file)\n    for line in infile:\n        line = line.strip()\n        if 'Prediction' in line:\n            allele_line = next(infile).strip()\n            if allele_line:\n                alleles.append(allele_line.split(',')[0])\n    alleles_bool = map(lambda x: x if re.match(r'^[A|B|C].*', x) else False, alleles)\n    return list(compress(alleles, alleles_bool))\n\ndef run_command(command, stdout=subprocess.PIPE):\n    print command\n    process = subprocess.Popen(command, shell=True, stdout=stdout)\n    out, err = process.communicate()\n    return out\n\ndef get_MHCalleles():\n    command = '/opt/netMHCpan-3.0/netMHCpan -listMHC > alleles_db/listMHC.fasta'\n    run_command(command, subprocess.PIPE)\n    out = open('alleles_db/listMHC.fasta').read()\n    mhc_alleles = filter(lambda x: x if not x.startswith('#') else False, out.split('\\n'))\n    return mhc_alleles\n\nif __name__ == '__main__':\n    parser = argparse.ArgumentParser(description='Process some integers.')\n    parser.add_argument(\n        '-hla', '--hla-input-file',\n        help='HLAminer Input file')\n    parser.add_argument(\n        '-d', '--database-file',\n        help='input IMGT database file')\n    parser.add_argument(\n        '-f', '--input-protein-file',\n        help='input protein file')\n\n    args = parser.parse_args()\n\n    alelle_dir = 'alleles_db/'\n    if os.path.exists(alelle_dir):\n        shutil.rmtree(alelle_dir)\n    os.mkdir(alelle_dir, 0777);\n    out_dir = 'outputs/'\n    if os.path.exists(out_dir):\n        shutil.rmtree(out_dir)\n    os.mkdir(out_dir, 0777);\n\n    all_alleles = get_MHCalleles()\n    output_prefix = os.path.splitext(basename(args.input_protein_file))[0]\n    for allele in process_hlaminer(args.hla_input_file):\n        allele_to_search = allele\n        allele = re.sub('\\*', '', allele)\n        allele =  'HLA-' + re.sub('P$', '', allele)\n        netMHC_outxls = output_prefix + '.' + allele.replace(\":\", \"-\", 1) + '.xls'\n        allele_fasta = alelle_dir + re.sub('\\*', '', allele) + '.fasta'\n        netMHC_outtxt = output_prefix + '.' + allele.replace(\":\", \"-\", 1)  + '.txt'\n\n        if allele in all_alleles:\n            print allele\n            run_command('/opt/netMHCpan-3.0/netMHCpan -l 9 -a {0} -f {1} -xls -xlsfile outputs/{2} > outputs/{3}'\n                .format(allele, args.input_protein_file, netMHC_outxls, netMHC_outtxt))\n            continue\n\n        out = open(allele_fasta, 'w')\n        db_out = open(args.database_file, 'r')\n        seqiter = SeqIO.parse(db_out, 'fasta')\n        allele_to_search = re.sub('P$', '', allele_to_search)\n        print allele_to_search\n        SeqIO.write((seq for seq in seqiter if allele_to_search in seq.id), out, \"fasta\")\n        out.close()\n        db_out.close()\n        print run_command('/opt/netMHCpan-3.0/netMHCpan -l 9 -hlaseq {0} -f {1} -xls -xlsfile outputs/{2} > outputs/{3}'\n                .format(allele_fasta, args.input_protein_file, netMHC_outxls, netMHC_outtxt))\n\n        print run_command('ls -halt')\n        print run_command('ls -halt outputs/')",
                "filename": "netmhcpan_parser.py"
              }
            ],
            "class": "CreateFileRequirement"
          },
          {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
              {
                "class": "DockerRequirement",
                "dockerPull": "rabix/js-engine"
              }
            ]
          }
        ],
        "x": 1638.1193686108852,
        "sbg:sbgMaintained": false,
        "stdin": "",
        "sbg:modifiedBy": "snamburi3",
        "outputs": [
          {
            "id": "#netmhcpan_outputs_xls",
            "type": [
              "null",
              {
                "name": "netmhcpan_outputs_xls",
                "items": "File",
                "type": "array"
              }
            ],
            "outputBinding": {
              "glob": "*.xls"
            }
          },
          {
            "id": "#netmhcpan_outputs_txt",
            "type": [
              "null",
              {
                "name": "netmhcpan_outputs_txt",
                "items": "File",
                "type": "array"
              }
            ],
            "outputBinding": {
              "glob": "*.txt"
            }
          }
        ],
        "sbg:latestRevision": 52,
        "sbg:modifiedOn": 1460298894,
        "y": 385.35349170446983,
        "sbg:cmdPreview": "python netmhcpan_parser.py -f /path/to/test.fsa  && mv outputs/* .",
        "sbg:id": "gauravCGC/jax-sbg/netmhc/52",
        "sbg:image_url": null,
        "successCodes": [],
        "sbg:project": "gauravCGC/jax-sbg",
        "hints": [
          {
            "class": "sbg:CPURequirement",
            "value": 1
          },
          {
            "class": "sbg:MemRequirement",
            "value": 1000
          },
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "netmhcpan"
          }
        ],
        "class": "CommandLineTool",
        "sbg:revision": 52,
        "sbg:job": {
          "allocatedResources": {
            "cpu": 1,
            "mem": 1000
          },
          "inputs": {
            "hla_allele_file": {
              "path": "/path/to/hla_allele_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "input_fsa": {
              "path": "/path/to/test.fsa",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "input_database_file": {
              "path": "/path/to/input_database_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            }
          }
        },
        "arguments": [
          {
            "separate": true,
            "position": 99,
            "valueFrom": {
              "class": "Expression",
              "engine": "#cwl-js-engine",
              "script": "'&& mv outputs/* .'"
            }
          }
        ],
        "temporaryFailCodes": [],
        "sbg:createdOn": 1457469527,
        "sbg:contributors": [
          "gauravCGC",
          "snamburi3"
        ]
      },
      "inputs": [
        {
          "id": "#netmhcpan.input_fsa",
          "source": [
            "#TCGA_Proteome_SBG_1.tumor_fasta"
          ]
        },
        {
          "id": "#netmhcpan.input_database_file",
          "source": [
            "#input_database_file"
          ]
        },
        {
          "id": "#netmhcpan.hla_allele_file",
          "source": [
            "#hlaminer.predictions_file"
          ]
        }
      ],
      "outputs": [
        {
          "id": "#netmhcpan.netmhcpan_outputs_xls"
        },
        {
          "id": "#netmhcpan.netmhcpan_outputs_txt"
        }
      ],
      "hints": [
        {
          "class": "sbg:AWSInstanceType",
          "value": "r3.2xlarge"
        }
      ],
      "sbg:x": 1638.1193686108852,
      "sbg:y": 385.35349170446983
    },
    {
      "id": "#samtools_fastq",
      "run": {
        "stdout": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  }\n  \n  inputfile = $job.inputs.input_bam.path\n  inputfile = baseName(inputfile)\n  extension = '.fastq'\n  return inputfile + extension\n}"
        },
        "sbg:validationErrors": [],
        "baseCommand": [
          "samtools",
          "fastq"
        ],
        "inputs": [
          {
            "sbg:fileTypes": "BAM",
            "inputBinding": {
              "separate": false,
              "position": 0,
              "sbg:cmdInclude": true
            },
            "id": "#input_bam",
            "label": "input bam file",
            "description": "input bam file",
            "type": [
              "File"
            ],
            "required": true
          }
        ],
        "sbg:createdBy": "snamburi3",
        "sbg:revisionsInfo": [
          {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1458665517,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1458664360,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1458673774,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1458676102,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1458686364,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1458675518,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1458675607,
            "sbg:modifiedBy": "gauravCGC"
          },
          {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1458689352,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1458690502,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1458687929,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1458690485,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1458692433,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1460313212,
            "sbg:modifiedBy": "snamburi3"
          },
          {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1460317966,
            "sbg:modifiedBy": "snamburi3"
          }
        ],
        "id": "gauravCGC/jax-sbg/samtools-fastq/13",
        "label": "samtools-fastq",
        "description": "",
        "requirements": [
          {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
              {
                "class": "DockerRequirement",
                "dockerPull": "rabix/js-engine"
              }
            ]
          }
        ],
        "x": 134.33337738779005,
        "sbg:sbgMaintained": false,
        "stdin": "",
        "sbg:modifiedBy": "snamburi3",
        "outputs": [
          {
            "id": "#output_fastq",
            "fileTypes": "FASTQ",
            "label": "output_fastq",
            "description": "output fastq file",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.fastq"
            }
          }
        ],
        "sbg:latestRevision": 13,
        "sbg:modifiedOn": 1460317966,
        "y": -129.33332672384049,
        "sbg:cmdPreview": "samtools fastq /path/to/myfile.bam > myfile.fastq",
        "sbg:id": "gauravCGC/jax-sbg/samtools-fastq/13",
        "sbg:image_url": null,
        "successCodes": [],
        "sbg:project": "gauravCGC/jax-sbg",
        "hints": [
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "samtools"
          },
          {
            "class": "sbg:CPURequirement",
            "value": 2
          },
          {
            "class": "sbg:MemRequirement",
            "value": 10000
          }
        ],
        "class": "CommandLineTool",
        "sbg:revision": 13,
        "sbg:job": {
          "allocatedResources": {
            "cpu": 2,
            "mem": 10000
          },
          "inputs": {
            "input_bam": {
              "path": "/path/to/myfile.bam",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            }
          }
        },
        "arguments": [],
        "temporaryFailCodes": [],
        "sbg:createdOn": 1458664360,
        "sbg:contributors": [
          "gauravCGC",
          "snamburi3"
        ]
      },
      "inputs": [
        {
          "id": "#samtools_fastq.input_bam",
          "source": [
            "#input_bam"
          ]
        }
      ],
      "outputs": [
        {
          "id": "#samtools_fastq.output_fastq"
        }
      ],
      "hints": [
        {
          "class": "sbg:AWSInstanceType",
          "value": "r3.2xlarge"
        }
      ],
      "sbg:x": 134.33337738779005,
      "sbg:y": -129.33332672384049
    },
    {
      "id": "#vcf_parser",
      "run": {
        "stdout": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "\n{\n    function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  }\n  \n \n  inputfile = $job.inputs.input_vcf_file.path.replace(/^.*[\\\\\\/]/, '')\n  inputfile = baseName(inputfile)\n  extension = '.nochr.vcf'\n  return inputfile + extension\n}"
        },
        "sbg:validationErrors": [],
        "baseCommand": [
          "python",
          "add_header.py"
        ],
        "inputs": [
          {
            "sbg:fileTypes": "VCF",
            "inputBinding": {
              "separate": true,
              "position": 1,
              "sbg:cmdInclude": true
            },
            "id": "#input_vcf_file",
            "label": "input.vcf",
            "description": "input VCF file",
            "type": [
              "File"
            ],
            "required": true
          }
        ],
        "sbg:createdBy": "NAMBURIS1",
        "sbg:revisionsInfo": [
          {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1467155071,
            "sbg:modifiedBy": "NAMBURIS1"
          },
          {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1467155686,
            "sbg:modifiedBy": "NAMBURIS1"
          },
          {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1467467318,
            "sbg:modifiedBy": "NAMBURIS1"
          },
          {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1467472149,
            "sbg:modifiedBy": "NAMBURIS1"
          }
        ],
        "id": "NAMBURIS1/neoepitope-analysis/vcf-parser-modified/3",
        "label": "vcf-parser",
        "description": "",
        "requirements": [
          {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
              {
                "class": "DockerRequirement",
                "dockerPull": "rabix/js-engine"
              }
            ]
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
        "x": 488.3333333333336,
        "sbg:sbgMaintained": false,
        "stdin": "",
        "sbg:modifiedBy": "NAMBURIS1",
        "outputs": [
          {
            "id": "#output_vcf_file",
            "fileTypes": "VCF",
            "label": "out.vcf",
            "description": "output VCF file",
            "type": [
              "null",
              "File"
            ],
            "outputBinding": {
              "glob": "*.vcf"
            }
          }
        ],
        "sbg:latestRevision": 3,
        "sbg:modifiedOn": 1467472149,
        "y": 300.00000000000017,
        "sbg:cmdPreview": "python add_header.py  /path/to/input_vcf_file.ext > input_vcf_file.nochr.vcf",
        "sbg:id": "NAMBURIS1/neoepitope-analysis/vcf-parser-modified/3",
        "sbg:image_url": null,
        "successCodes": [],
        "sbg:project": "NAMBURIS1/neoepitope-analysis",
        "hints": [
          {
            "class": "sbg:CPURequirement",
            "value": 1
          },
          {
            "class": "sbg:MemRequirement",
            "value": 1000
          },
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "protein_translator"
          }
        ],
        "class": "CommandLineTool",
        "sbg:revision": 3,
        "sbg:job": {
          "allocatedResources": {
            "cpu": 1,
            "mem": 1000
          },
          "inputs": {
            "input_vcf_file": {
              "path": "/path/to/input_vcf_file.ext",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            }
          }
        },
        "arguments": [],
        "temporaryFailCodes": [],
        "sbg:createdOn": 1467155071,
        "sbg:contributors": [
          "NAMBURIS1"
        ]
      },
      "inputs": [
        {
          "id": "#vcf_parser.input_vcf_file",
          "source": [
            "#Variant_Effect_Predictor.vep_output"
          ]
        }
      ],
      "outputs": [
        {
          "id": "#vcf_parser.output_vcf_file"
        }
      ],
      "sbg:x": 488.3333333333336,
      "sbg:y": 300.00000000000017
    },
    {
      "id": "#TCGA_Proteome_SBG_1",
      "run": {
        "stdout": "",
        "sbg:validationErrors": [],
        "baseCommand": [
          "Rscript",
          "TCGA_Proteome_SBG_GK.r"
        ],
        "inputs": [
          {
            "id": "#output_tumor_file",
            "label": "Protein_Translator",
            "description": "output fasta - tumor",
            "type": [
              "null",
              "string"
            ],
            "inputBinding": {
              "separate": true,
              "position": 6,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_vcf.path\n  inputfile = baseName(inputfile.replace(/\\.[^/.]+$/, \"\"))\n  extension = '.tumor.fasta'\n  return inputfile + extension\n}"
              }
            }
          },
          {
            "sbg:toolDefaultValue": "FASTA",
            "inputBinding": {
              "separate": true,
              "position": 5,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_vcf.path\n  inputfile = baseName(inputfile.replace(/\\.[^/.]+$/, \"\"))\n  extension = '.normal.fasta'\n  return inputfile + extension\n}"
              }
            },
            "id": "#output_normal_file",
            "label": "output.normal.fasta",
            "description": "output fasta - normal",
            "type": [
              "null",
              "string"
            ]
          },
          {
            "inputBinding": {
              "separate": true,
              "position": 4,
              "sbg:cmdInclude": true,
              "valueFrom": {
                "class": "Expression",
                "engine": "#cwl-js-engine",
                "script": "{\n  function baseName(str)\n  {\n   var base = new String(str).substring(str.lastIndexOf('/') + 1); \n    if(base.lastIndexOf(\".\") != -1)       \n        base = base.substring(0, base.lastIndexOf(\".\"));\n   return base;\n  } \n  \n  inputfile = $job.inputs.input_vcf.path\n  inputfile = baseName(inputfile.replace(/\\.[^/.]+$/, \"\"))\n  extension = '.exome.xls'\n  return inputfile + extension\n}\n"
              }
            },
            "id": "#output_excel",
            "label": "out.xls",
            "description": "output XLS file",
            "type": [
              "null",
              "string"
            ],
            "sbg:stageInput": null
          },
          {
            "id": "#input_vcf",
            "type": [
              "null",
              "File"
            ],
            "inputBinding": {
              "separate": false,
              "position": 3,
              "sbg:cmdInclude": true
            },
            "required": false
          },
          {
            "id": "#input_gtf",
            "description": "Default Homo_sapiens.GRCh38.83.gtf",
            "type": [
              "null",
              "File"
            ],
            "inputBinding": {
              "separate": false,
              "position": 1,
              "sbg:cmdInclude": true
            },
            "required": false
          },
          {
            "id": "#input_csv",
            "type": [
              "null",
              "File"
            ],
            "inputBinding": {
              "separate": false,
              "position": 2,
              "sbg:cmdInclude": true
            },
            "required": false
          }
        ],
        "sbg:createdBy": "NAMBURIS1",
        "sbg:revisionsInfo": [
          {
            "sbg:revisionNotes": "Copy of snamburi3/neoepitope-copy/tcga-proteome-sbg/0",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1467731126,
            "sbg:modifiedBy": "NAMBURIS1"
          },
          {
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1467752602,
            "sbg:modifiedBy": "NAMBURIS1"
          }
        ],
        "id": "NAMBURIS1/neoepitope-analysis/tcga-proteome-sbg/1",
        "label": "Protein_Translator",
        "description": "",
        "requirements": [
          {
            "fileDef": [
              {
                "fileContent": "###########################################################################################################\n# Build tumor proteome for TCGA data based on a script by Dan Gatti (JAX) da.gatti@jax.org for Mouse\n# Preeti Bais, Preeti.Bais@jax.org  Feb 29, 2016\n# Modified by Gaurav Kaushik (gaurav@sevenbridges.com) on March 1, 2016\n# Modifified by Dnaiel Gatti, April 1, 2016.\n# Input files:  \"Homo_sapiens.GRCh38.83.gtf\", \"HumanProteins_GRCm38.78_Modified.csv\",\"inputvcffile.vcf\"\n# Output files: \"TCGA-A1-A0SE_D_IlluminaGA-DNASeq_exome_excel_final.csv\", \"TCGA-A1-A0SE_D_IlluminaGA-DNASeq_exome_final.csv\"\n# Command Line Usage: Rscript TCGA_Proteome_SBG.r input.gtf input.csv input.vcf\n# NOTE: We require taht the VCF contain ONLY SNPs and not indels or larger variants.  Also, we require\n#       that each SNP have one and only one ALT allele.\n##########################################################################################################\noptions(stringsAsFactors = F)\nlibrary(VariantAnnotation)\nlibrary(snpStats)\nlibrary(rtracklayer) #pbais\n\n\n#setwd(\"C:/Users/pbais/Desktop/Projects/JeffChuang/BRCA/working/SBG/tepper/testing\") #pbais\n#setwd(\"C:/Users/pbais/Desktop/Projects/JeffChuang/RibasData\")\n\n## Gaurav's Edits: Create the Command Line Arguments ##\nargs = commandArgs(trailingOnly = TRUE)\n\n\n#gunzip(\"Homo_sapiens.GRCh37.82.gtf.gz\")\n# Load in the ensembl GTF. (object name = gtf)\n## Gaurav: edit this out (use args[1] instead to make dynamic) ##\n# myGTF <- \t\"Homo_sapiens.GRCh38.84.gtf\" #pbais\n#myGTF <- \"Homo_sapiens.GRCh37.82.gtf\"\n#myGTF <- \"Homo_sapiens.GRCh37.75.gtf\"\n\nmyGTF <- args[1]\ngtf <- import(myGTF) #pbais\n\n# Load in the ensembl GTF. (object name = gtf)\nexons = gtf[gtf$type == \"CDS\"]\nrm(gtf)\n\n## Gaurav: edit this out (use args[2] instead) ##\n# prot = read.csv(\"HumanProteins.GRCh37.75.csv\")\nprot = read.csv(args[2])\n\n################\n### SNPs #######\n################\n\n# Get the Sanger SNPs that intersect with the genes.\n# Using Sanger version 4 SNPs.\n\n## Gaurav: edit this out (use args[3] instead) ##\n# snpfile = \"BL0293F_P0_xenome-pe_filtered_combined_variants_VEP_CHR.vcf\"\n#snpfile =\"TCGA-05-4384-01A-01D-1753-08_vs_TCGA-05-4384-10A-01D-1753-08_Header_VEP.vcf\"\n#snpfile =\"_1_DOw-baseline.sorted.rmdup.realign.fixmate.mutect.vep.nochr.vcf\"\n#snpfile = \"TCGA_test.vcf\"\n#snpfile = \"_3_DOw-baseline.sorted.rmdup.realign.fixmate.mutect.vep_NOCHAR.vcf\"\nsnpfile <- args[3]\n\nhdr = scanVcfHeader(snpfile)\n\n# Synch up the genome and seqlevels.\nexons = keepSeqlevels(exons, seqlevels(hdr))\ngenome(exons) = rep(\"hg19\", length(genome(exons)))\n\n  # Get all SNPs in the VCF.\n  snps = readVcf(file = snpfile, genome = \"hg19\")\n  \n  #pbais added the following lines -3 \n  idx <- GenomicRanges:::get_out_of_bound_index(snps)\n  if (length(idx) != 0)\n    snps <- snps[-idx]\n\n  # Keep only SNPs that intersect with exons.\n  snps = subsetByOverlaps(snps, exons)\n\n  # Convert the genotypes to allele calls.\n  snps = genotypeCodesToNucleotides(snps)\n\n  # Remove SNPs with no consequence.\n  csq  = info(snps)$CSQ\n  keep = which(sapply(csq, length) > 0)\n  snps = snps[keep]\n  csq  = csq[keep]\n\n  # Create a smaller data set.\n  alt = as.character(unlist(fixed(snps)$ALT))\n  snps = GRanges(seqnames = seqnames(snps), ranges = ranges(snps), \n         mcols = cbind(ref = as.character(fixed(snps)$REF), \n         alt = alt, SNPID = names(rowRanges(snps)),\n         qual = fixed(snps)$FILTER, geno = geno(snps)$GT))\n  colnames(mcols(snps)) = sub(\"^mcols\\\\.\", \"\", colnames(mcols(snps)))\n  \n  snps$ref  = as.character(snps$ref)\n  snps$alt  = as.character(snps$alt)\n  snps$SNPID  = as.character(snps$SNPID)\n  snps$qual = as.character(snps$qual)\n  #snps$geno = as.character(snps$geno)\n\n  # Convert the consequences into matrices.\n  # NOTE: We're truncating the VCF columns to 20 because we don't need the rest.\n  csq = lapply(csq, strsplit, split = \"\\\\|\")\n  csq = lapply(csq, function(z) { \n               z = lapply(z, \"[\", 1:20)\n               matrix(unlist(z), ncol = length(z[[1]]), byrow = T)\n        })\n\n  # Get all of the unique variant effects.\n  un = unique(unlist(sapply(csq, function(z) { z[,2] })))\n  un = sort(unique(unlist(strsplit(un, split = \"&\"))))\n\n  stopifnot(length(csq) == length(snps))\n\n  result = matrix(\"\", nrow = length(snps) * 10, ncol = 15, dimnames = \n           list(NULL, c(\"chr\", \"pos\", \"ID\", \"REF\", \"ALT\", \"quality\", \"gene\", \"symbol\",\n          \"transcript\", \"protein\", \"effect\", \"ProtPos\", \"REFAA\", \"ALTAA\",\"PRIMARY\")))\n\n  idx = 1  # row index in result.\n\n  for(j in 1:length(snps)) {\n\n    # Keep only variants with AA changes that match the current allele.\n    # Some SNPs will have two alleles.\n    curr.csq = csq[[j]]\n    curr.csq = curr.csq[curr.csq[,1] == snps$alt[j],,drop = FALSE]\n    curr.csq = curr.csq[curr.csq[,16] != \"\",,drop = FALSE]  # Column 16 contains the AA change.\n    curr.csq = curr.csq[grep(\"/\", curr.csq[,16]),,drop = FALSE]\n\n    print(paste(j, nrow(curr.csq)))\n\n    # If all of the variants were synonymous, we won't have any consequences here.\n    if(nrow(curr.csq) > 0) {\n     \n      for(k in 1:nrow(curr.csq)) {\n\n        # Find the transcript in the protien sequences.\n        cur.prot = prot[prot$transcript == curr.csq[k,7],]\n        prot.pos = as.numeric(curr.csq[k,15]) # Column 15 is AA position in the protein.\n        prot.aa = substring(cur.prot$seq, prot.pos, prot.pos)\n        snp.aa = strsplit(curr.csq[k,16], split = \"/\")[[1]]\n\n        # If we have a reference AA, then verify that it matches the protein sequence.\n        # If we have a stop_lost (\"*\" as ref AA), then verify that the protein length\n        # equals the variant protein position.\n        if(snp.aa[1] == \"*\") {\n          if(curr.csq[k,2] == \"stop_lost\") {\n            stopifnot((prot.aa == \"X\" | prot.aa == \"*\") & snp.aa[1] == \"*\" | \n                      nchar(cur.prot$seq) == as.numeric(curr.csq[k,15]) - 1)\n          } else {\n            stopifnot(nchar(cur.prot$seq) == as.numeric(curr.csq[k,15]) - 1 |\n                      prot.aa == snp.aa[1])\n          } # else\n        } else if(snp.aa[1] == \"X\") {\n          # DMG: I don't know how to handle this case.\n          print(\"Got an X for AA.\")\n        } else {\n          # Abort if the AA in the protein sequence does not equal the AA in the VCF file.\n          #stopifnot(prot.aa == snp.aa[1] )\n        } # else\n\n        symbol = exons$gene_name[exons$gene_id == curr.csq[k,5]][1]\n\n        result[idx,] = c(as.character(seqnames(snps)[j]), start(snps)[j], snps$SNPID[j],\n                     snps$ref[j], snps$alt[j], snps$qual[j], curr.csq[k,5], symbol,\n                     curr.csq[k,7],  cur.prot[1,1],curr.csq[k,8],curr.csq[k,15],\n                     snp.aa, unlist(mcols(snps)[j, 5]))\n        idx = idx + 1\n\n      } # for(k)\n    \n    } # if(nrow(curr.csq) > 0)\n    \n  } # for(j)\n\n  result = result[result[,1] != \"\",]\n  \n  # DMG : This looks like your code from here down.  I'll let you check this and\n  #       produce whatever format you want.\n  colnames(prot)[1] <- \"protein\"\n  result2 <- merge(result, prot[,c(1,4,5)] , by =\"protein\")\n  result2[,1] <- 1:nrow(result2)\n  colnames(result2)[1] <- \"ProteinIndex\"\n  result3 <- result2\n \n  \n  result2[[\"PSeq_Normal\"]] <- paste(\">Pr:\",result2$ProteinIndex, \"\\n\", substr(result2$seq, as.numeric(result2$ProtPos)-8, as.numeric(result2$ProtPos)+8), sep = \"\")\n  \n  result2[[\"PSeq_Primary\"]] <- paste(\">Pr:\",result2$ProteinIndex, \"\\n\", paste(substr(result2$seq, as.numeric(result2$ProtPos)-8, as.numeric(result2$ProtPos)-1),result2$ALTAA,\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  substr(result2$seq, as.numeric(result2$ProtPos)+ 1, as.numeric(result2$ProtPos)+9),sep=\"\" ),sep = \"\")\n  \n  save(result3, file = \"protein_changes.Rdata\")\n\n\n\n# Read in all Chrs, filter out the synonymous variants and write the data\n# out to one, big file.\nfiles = dir(pattern = \"Rdata$\")\nnum = gsub(\"^protein_changes_chr|\\\\.Rdata$\", \"\", files)\nfiles = files[order(as.numeric(num))]\n# files[20:22] = files[c(21,22,20)] # commented out because creating list of NA\n\n## GAURAV: glob these output files as an array\n## or use harcoded-names\nexceloutfile  = args[4]\n#exceloutfile <- \"tempexcel.csv\"\noutfile1 = args[5]\n\n#outfile1 <- \"temppp1.fasta\"\n#outfile2 <- \"temppp2.fasta\"\n\noutfile2 = args[6]\nfor(i in 1:length(files)) {\n\n  load(files[i])\n  dim(result2)\n  #result = result[-grep(\"synonymous\", result[,\"effect\"]),]\n  print(paste(i,dim(result2)))\n\n  # Set the no calls to \"N/N\".\n  result2[,15:16][result2[,15:16] == \".\"] = \"N/N\"\n  \n   write.table(result2$PSeq_Normal, file = outfile1, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = \",\")\n   write.table(result2$PSeq_Primary, file = outfile2, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = \",\")\n  # Set the reference calls to \".\".\n  #ref = paste(result2[,\"REF\"], result2[,\"REF\"], sep = \"/\")\n  #result2[,15:16][ref == result2[,15:16]] = \".\"\n\n  write.table(result3, file = exceloutfile, quote = F, row.names = F,append = i > 1, col.names = i == 1, sep = \",\")\n} # for(i)",
                "filename": "TCGA_Proteome_SBG_GK.r"
              }
            ],
            "class": "CreateFileRequirement"
          },
          {
            "id": "#cwl-js-engine",
            "class": "ExpressionEngineRequirement",
            "requirements": [
              {
                "class": "DockerRequirement",
                "dockerPull": "rabix/js-engine"
              }
            ]
          }
        ],
        "x": 928.3337349097085,
        "sbg:sbgMaintained": false,
        "stdin": "",
        "sbg:modifiedBy": "NAMBURIS1",
        "outputs": [
          {
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
        "sbg:latestRevision": 1,
        "sbg:modifiedOn": 1467752602,
        "y": 558.333511379036,
        "sbg:cmdPreview": "Rscript TCGA_Proteome_SBG_GK.r",
        "sbg:id": "NAMBURIS1/neoepitope-analysis/tcga-proteome-sbg/1",
        "sbg:image_url": null,
        "successCodes": [],
        "sbg:project": "NAMBURIS1/neoepitope-analysis",
        "hints": [
          {
            "class": "sbg:CPURequirement",
            "value": 1
          },
          {
            "class": "sbg:MemRequirement",
            "value": 1000
          },
          {
            "class": "DockerRequirement",
            "dockerImageId": "",
            "dockerPull": "bioc:latest"
          }
        ],
        "class": "CommandLineTool",
        "sbg:revision": 1,
        "sbg:job": {
          "allocatedResources": {
            "cpu": 1,
            "mem": 1000
          },
          "inputs": {
            "output_normal_file": "output_normal_file-string-value",
            "output_excel": "output_excel-string-value",
            "input_csv": {
              "path": "input_csv.csv",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "input_vcf": {
              "path": "input_vcf.vcf",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "input_gtf": {
              "path": "input_gtf.gtf",
              "class": "File",
              "size": 0,
              "secondaryFiles": []
            },
            "output_tumor_file": "output_tumor_file-string-value"
          }
        },
        "arguments": [],
        "temporaryFailCodes": [],
        "sbg:createdOn": 1467731126,
        "sbg:contributors": [
          "NAMBURIS1"
        ]
      },
      "inputs": [
        {
          "id": "#TCGA_Proteome_SBG_1.output_tumor_file"
        },
        {
          "id": "#TCGA_Proteome_SBG_1.output_normal_file"
        },
        {
          "id": "#TCGA_Proteome_SBG_1.output_excel"
        },
        {
          "id": "#TCGA_Proteome_SBG_1.input_vcf",
          "source": [
            "#vcf_parser.output_vcf_file"
          ]
        },
        {
          "id": "#TCGA_Proteome_SBG_1.input_gtf",
          "source": [
            "#input_gtf_1"
          ]
        },
        {
          "id": "#TCGA_Proteome_SBG_1.input_csv",
          "source": [
            "#input_csv_1"
          ]
        }
      ],
      "outputs": [
        {
          "id": "#TCGA_Proteome_SBG_1.tumor_fasta"
        },
        {
          "id": "#TCGA_Proteome_SBG_1.output_xls"
        },
        {
          "id": "#TCGA_Proteome_SBG_1.control_fasta"
        }
      ],
      "sbg:x": 928.3337349097085,
      "sbg:y": 558.333511379036
    }
  ],
  "requirements": [],
  "inputs": [
    {
      "id": "#input_bam",
      "label": "input_bam",
      "sbg:x": -86.1960783877404,
      "sbg:y": -65.56861333987253,
      "type": [
        "File"
      ]
    },
    {
      "id": "#input_reference_file",
      "label": "input_reference_file",
      "sbg:x": -70.3137216162835,
      "sbg:y": 289.3223686743721,
      "type": [
        "null",
        "File"
      ]
    },
    {
      "id": "#input_file",
      "label": "input_file",
      "sbg:x": -78.33342678017445,
      "sbg:y": 493.3335868385199,
      "type": [
        "File"
      ]
    },
    {
      "id": "#input_database_file",
      "label": "input_database_file",
      "sbg:x": 843.3333899047652,
      "sbg:y": 348.3334064881033,
      "type": [
        "null",
        "File"
      ]
    },
    {
      "id": "#input_allele_database",
      "label": "input_allele_database",
      "sbg:x": -90.00011474556842,
      "sbg:y": 109.98841483017112,
      "type": [
        "File"
      ]
    },
    {
      "id": "#input_csv_1",
      "label": "input_csv_1",
      "sbg:x": 626.6666310628234,
      "sbg:y": 970.0000996324774,
      "type": [
        "null",
        "File"
      ]
    },
    {
      "id": "#input_gtf_1",
      "label": "input_gtf_1",
      "sbg:x": 624.9999844100728,
      "sbg:y": 835.0001348919377,
      "type": [
        "null",
        "File"
      ]
    },
    {
      "sbg:suggestedValue": 0,
      "sbg:toolDefaultValue": "0",
      "inputBinding": {
        "separate": true,
        "position": 0,
        "sbg:cmdInclude": true,
        "prefix": "-e"
      },
      "id": "#num_gap_extensions",
      "label": "maximum number of gap extensions",
      "description": "maximum number of gap extensions, -1 for disabling long gaps [-1]",
      "type": [
        "null",
        "int"
      ]
    },
    {
      "sbg:suggestedValue": 0,
      "sbg:toolDefaultValue": "0",
      "inputBinding": {
        "separate": true,
        "position": 2,
        "sbg:cmdInclude": true,
        "prefix": "-o"
      },
      "id": "#maximum_number_of_gap_opens",
      "label": "maximum number or fraction of gap opens",
      "description": "maximum number or fraction of gap opens [1]",
      "type": [
        "null",
        "int"
      ],
      "sbg:stageInput": null
    },
    {
      "sbg:suggestedValue": true,
      "sbg:toolDefaultValue": "False",
      "inputBinding": {
        "separate": true,
        "position": 1,
        "sbg:cmdInclude": true,
        "prefix": "--vcf"
      },
      "sbg:category": "Data format options",
      "id": "#vcf",
      "label": "Output as VCF file",
      "description": "Writes output in VCF format. Consequences are added in the INFO field of the VCF file, using the key \"CSQ\". Data fields are encoded separated by \"|\"; the order of fields is written in the VCF header. Output fields can be selected by using --fields.  If the input format was VCF, the file will remain unchanged save for the addition of the CSQ field (unless using any filtering).  Custom data added with --custom are added as separate fields, using the key specified for each data file.  Commas in fields are replaced with ampersands (&) to preserve VCF format.",
      "type": [
        "null",
        "boolean"
      ]
    },
    {
      "sbg:suggestedValue": true,
      "sbg:toolDefaultValue": "False",
      "inputBinding": {
        "separate": true,
        "position": 1,
        "sbg:cmdInclude": true,
        "prefix": "--html"
      },
      "id": "#html",
      "label": "HTML",
      "description": "Generate an additional HTML version of the output file containing hyperlinks to Ensembl and other resources. File name of this file is [output_file].html. In order for this feature to work properly you will have to set VEP's to \"default\" (text) format and place that output in the same folder as this HTML file.",
      "type": [
        "null",
        "boolean"
      ]
    },
    {
      "sbg:suggestedValue": true,
      "sbg:toolDefaultValue": "False",
      "sbg:category": "Filtering and QC options",
      "id": "#filter_common",
      "label": "Filter common",
      "description": "Shortcut flag for the filters - this will exclude variants that have a co-located existing variant with global MAF > 0.01 (1%). May be modified using any of the following freq_* filters. For human, this can be used in offline mode for the following populations: 1KG_ALL, 1KG_AFR, 1KG_AMR, 1KG_ASN, 1KG_EUR.",
      "type": [
        "null",
        "boolean"
      ]
    },
    {
      "sbg:suggestedValue": "500",
      "sbg:toolDefaultValue": "500",
      "inputBinding": {
        "separate": true,
        "position": 2,
        "sbg:cmdInclude": true,
        "prefix": "-s"
      },
      "id": "#minimum_score",
      "description": "minimum score",
      "type": [
        "null",
        {
          "symbols": [
            "500"
          ],
          "type": "enum",
          "name": "minimum_score"
        }
      ],
      "sbg:stageInput": null
    },
    {
      "id": "#label_run_name",
      "type": [
        "null",
        "string"
      ],
      "inputBinding": {
        "separate": true,
        "position": 2,
        "sbg:cmdInclude": true,
        "prefix": "-l"
      }
    },
    {
      "sbg:suggestedValue": 1,
      "sbg:toolDefaultValue": "1",
      "inputBinding": {
        "separate": true,
        "position": 5,
        "sbg:cmdInclude": true,
        "prefix": "-e"
      },
      "id": "#bool_single_end_reads_used",
      "label": "bool",
      "description": "single-end reads used (1=yes/0=no)",
      "type": [
        "null",
        "int"
      ],
      "sbg:stageInput": null
    }
  ],
  "outputs": [
    {
      "sbg:x": 1124.3335407707498,
      "sbg:y": -59.666640930704524,
      "id": "#predictions_file",
      "sbg:includeInPorts": true,
      "label": "predictions_file",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#hlaminer.predictions_file"
      ]
    },
    {
      "sbg:x": 490.0001720587476,
      "sbg:y": 588.3335198693874,
      "id": "#html_summary",
      "sbg:includeInPorts": true,
      "label": "html_summary",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#Variant_Effect_Predictor.html_summary"
      ]
    },
    {
      "sbg:x": 490.00021089448666,
      "sbg:y": 756.6668593618674,
      "id": "#html_output",
      "sbg:includeInPorts": true,
      "label": "html_output",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#Variant_Effect_Predictor.html_output"
      ]
    },
    {
      "sbg:x": 2025.0006051990943,
      "sbg:y": 246.6550953648525,
      "id": "#netmhcpan_outputs_xls",
      "sbg:includeInPorts": true,
      "label": "netmhcpan_outputs_xls",
      "type": [
        "null",
        {
          "name": "netmhcpan_outputs_xls",
          "items": "File",
          "type": "array"
        }
      ],
      "required": false,
      "source": [
        "#netmhcpan.netmhcpan_outputs_xls"
      ]
    },
    {
      "sbg:x": 2038.3337352143535,
      "sbg:y": 563.3217858733772,
      "id": "#netmhcpan_outputs_txt",
      "sbg:includeInPorts": true,
      "label": "netmhcpan_outputs_txt",
      "type": [
        "null",
        {
          "name": "netmhcpan_outputs_txt",
          "items": "File",
          "type": "array"
        }
      ],
      "required": false,
      "source": [
        "#netmhcpan.netmhcpan_outputs_txt"
      ]
    },
    {
      "sbg:x": 503.3333829243993,
      "sbg:y": 438.3275726898867,
      "id": "#vep_output",
      "sbg:includeInPorts": true,
      "label": "vep_output",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#Variant_Effect_Predictor.vep_output"
      ]
    },
    {
      "sbg:x": 755.0002097951078,
      "sbg:y": 261.6666875282925,
      "id": "#output_vcf_file",
      "sbg:includeInPorts": true,
      "label": "output_vcf_file",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#vcf_parser.output_vcf_file"
      ]
    },
    {
      "sbg:x": 1325.000171343491,
      "sbg:y": 623.3334215879468,
      "id": "#tumor_fasta_1",
      "sbg:includeInPorts": true,
      "label": "tumor_fasta_1",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#TCGA_Proteome_SBG_1.tumor_fasta"
      ]
    },
    {
      "sbg:x": 1323.3333822091429,
      "sbg:y": 758.333406938449,
      "id": "#output_xls",
      "sbg:includeInPorts": true,
      "label": "output_xls",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#TCGA_Proteome_SBG_1.output_xls"
      ]
    },
    {
      "sbg:x": 1331.66667511728,
      "sbg:y": 891.6667872534895,
      "id": "#control_fasta_1",
      "sbg:includeInPorts": true,
      "label": "control_fasta_1",
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "source": [
        "#TCGA_Proteome_SBG_1.control_fasta"
      ]
    }
  ],
  "sbg:canvas_y": -52,
  "sbg:revisionNotes": "removed second netmhcpan",
  "sbg:createdBy": "NAMBURIS1",
  "sbg:canvas_zoom": 0.5999999999999996,
  "sbg:revisionsInfo": [
    {
      "sbg:revisionNotes": "Copy of NAMBURIS1/cloudneo/Neoepitope-Analysis-Main/0",
      "sbg:revision": 0,
      "sbg:modifiedOn": 1478288928,
      "sbg:modifiedBy": "NAMBURIS1"
    },
    {
      "sbg:revisionNotes": "removed second netmhcpan",
      "sbg:revision": 1,
      "sbg:modifiedOn": 1478289114,
      "sbg:modifiedBy": "NAMBURIS1"
    }
  ],
  "sbg:sbgMaintained": false,
  "sbg:modifiedBy": "NAMBURIS1",
  "sbg:latestRevision": 1,
  "sbg:modifiedOn": 1478289114,
  "sbg:id": "NAMBURIS1/cloudneo-1/Neoepitope-Analysis-Main/1",
  "sbg:image_url": "https://cgc-brood.sbgenomics.com/static/NAMBURIS1/cloudneo-1/Neoepitope-Analysis-Main/1.png",
  "sbg:project": "NAMBURIS1/cloudneo-1",
  "sbg:revision": 1,
  "sbg:validationErrors": [],
  "sbg:canvas_x": -262,
  "sbg:createdOn": 1478288928,
  "sbg:contributors": [
    "NAMBURIS1"
  ],
  "id": "NAMBURIS1/cloudneo-1/Neoepitope-Analysis-Main/1",
  "label": "Neoepitope Analysis",
  "description": "",
  "hints": [
    {
      "class": "sbg:AWSInstanceType",
      "value": "r3.2xlarge"
    }
  ]
}
