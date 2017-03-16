# Install R
FROM ubuntu:14.04

RUN apt-get -y update \
    && apt-get -y install software-properties-common \
    python-software-properties \
    build-essential

RUN add-apt-repository "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 \
    && apt-get update \
    && apt-get install -y --force-yes r-base r-base-dev r-cran-rcurl libreadline-dev \
    && apt-get autoremove -y \
    && apt-get clean -y


# Install software needed for common R libraries
RUN apt-get -y install libcurl4-gnutls-dev \
    libpcre++-dev \
    libxml2-dev

# install the required modules. The Rscript is run from the CWL itself, not from the docker image
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("VariantAnnotation", "snpStats"), ask=FALSE);'

# the Rscript is embedded in the CWl itself. It is not copied into the docker image. This Dockerfile can be extended or used with other Rscripts.
