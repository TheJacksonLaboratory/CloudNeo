# CloudNeo Workflow Overview

## Overview

This repository has the [CWL](http://www.commonwl.org/) implementation of CloudNeo: A cloud pipeline for identifying patient-specific tumor neoantigen.
The workflow was developed on Seven Bridges Genomics' CGC platfrom. The CGC went live in Nov 2015 when the CWL spec was still in Draft 2. There are differences between the `draft-2` and the version `v.1.0`.

## Required Software
- bwa==0.7.13
- 

## Setting up the Environment


## Building the  Docker Images

The Dockerfiles used to develop the workflow are provided in the folder 'dockerfiles'.
To build the docker image, run:

```
	# build bwa image
	docker build -t bwa:cloudneo -f dockerfiles/bwa.v0.7.13/Dockerfile .
	
	# build hlaminer image
	docker build -t hlaminer:cloudneo dockerfiles/hlaminer/Dockerfile .
	
	# build netmhcpan image
	docker build -t netmhcpan:cloudneo dockerfiles/netMHCpan.v3.0a/Dockerfile .
	
	# build netmhc image
	docker build -t netmhc:cloudneo dockerfiles/netMHC.v4.0a/Dockerfile .

	# build polysolver image
	docker build -t polysolver:cloudneo dockerfiles/polysolver/Dockerfile .
	
	# build protein-translator image
	docker build -t protein-translator:cloudneo dockerfiles/protein-translator/Dockerfile .

	# build samtools image
	docker build -t samtools:cloudneo dockerfiles/samtools.v1.3/Dockerfile .

	# build variant-effect-predictor image
	docker build -t variant-effect-predictor:cloudneo dockerfiles/variant-effect-predictor/Dockerfile .
	
	# build vcf-parser image
	docker build -t vcf-parser:cloudneo dockerfiles/vcf-parser/Dockerfile .
	
```


