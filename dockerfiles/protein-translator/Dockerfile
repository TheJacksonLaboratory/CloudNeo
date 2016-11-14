## Start with the hadleyverse image from Rocker, then add population
## genetics images on top.

#FROM r-base:latest

## Bioconductor packages (they may be dependencies)
#RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); \ 
#	biocLite(c("VariantAnnotation", "snpStats", "rtracklayer"));'
#RUN install2.r -r http://bioconductor.org/packages/3.0/bioc --deps TRUE \
#    BiocInstaller \
#    VariantAnnotation \
#    && rm -rf /tmp/downloaded_packages/

# Install R
FROM ubuntu:14.04

RUN apt-get -y update \
    && apt-get -y install software-properties-common \
    python-software-properties \
    build-essential

RUN add-apt-repository "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 \
    && apt-get update \
    && apt-get install -y r-base r-base-dev r-cran-rcurl libreadline-dev \
    && apt-get autoremove -y \
    && apt-get clean -y


# Install software needed for common R libraries
RUN apt-get -y install libcurl4-gnutls-dev \
    libpcre++-dev \
    libxml2-dev

# install bioconductor and then update a few other packages for R 3.1.1
#RUN install2.r -r http://bioconductor.org/packages/3.0/bioc --deps TRUE \
#    VariantAnnotation \
#    && rm -rf /tmp/downloaded_packages/

RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("VariantAnnotation", "snpStats"), ask=FALSE);'
