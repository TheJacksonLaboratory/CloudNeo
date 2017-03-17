FROM ubuntu:14.04

# this is a base image with just python installed
# Update package
# the vcf parser script is included in the CWL code itself. We need not copy the script to the docker container. The vcf parser script is provided just for development.
RUN apt-get -y update \ 
    && apt-get -y install software-properties-common \ 
    python-software-properties \
    build-essential

# the Python script is embedded in the CWl itself. It is not copied into the docker image. This Dockerfile can be extended or used with scripts.
