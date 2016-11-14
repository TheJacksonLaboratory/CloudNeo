FROM ubuntu:14.04

# Update package
RUN apt-get -y update \ 
    && apt-get -y install software-properties-common \ 
    python-software-properties \
    build-essential \
    zlib1g-dev

# Install htslib
ADD https://github.com/samtools/htslib/releases/download/1.3/htslib-1.3.tar.bz2 /tmp
RUN cd /tmp/; tar -jxvf htslib-*; cd /tmp/htslib* && ./configure && make && make install

# Install modules
RUN apt-get -y install git \
    wget \
    unzip \
    curl \
    vim \
    gzip
