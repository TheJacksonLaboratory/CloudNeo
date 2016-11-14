# CloudNeo Workflow

## Overview

This repository has the [CWL](http://www.commonwl.org/) implementation of CloudNeo: A cloud pipeline for identifying patient-specific tumor neoantigen.
The workflow was developed on Seven Bridges Genomics' CGC platfrom. The CGC went live in Nov 2015 when the CWL spec was still in Draft 2.

## Building the  Docker Images

The Dockerfiles used to develop the workflow are provided in the folder 'dockerfiles'.
To build the docker image, run:

    docker build -t bwa .

