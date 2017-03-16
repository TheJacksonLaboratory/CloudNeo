FROM ubuntu:14.04

# Update package
RUN apt-get -y update \ 
    && apt-get -y install software-properties-common \ 
    python-software-properties \
    build-essential \
    zlib1g-dev

# Install modules
RUN apt-get -y install git \
    wget \
    unzip \
    curl \
    vim \
    gzip

# install HLAminer
WORKDIR /usr/local/bin
RUN wget http://www.bcgsc.ca/platform/bioinfo/software/hlaminer/releases/1.3/HLAminer_v1-3.tar.gz
RUN tar -zxvf HLAminer_v1-3.tar.gz

RUN cd /usr/local/bin/HLAminer_v1.3/database && sh updateAll.sh
RUN sed -i 's/\.\.\/database\/hla_nom_p.txt/\/usr\/local\/bin\/HLAminer_v1.3\/database\/hla_nom_p.txt/g' /usr/local/bin/HLAminer_v1.3/bin/HLAminer.pl 
