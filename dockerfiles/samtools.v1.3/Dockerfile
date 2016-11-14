FROM ubuntu:14.04

# Update package
RUN apt-get -y update \ 
    && apt-get -y install software-properties-common \ 
    python-software-properties \
    build-essential

# Install modules
RUN apt-get -y install zlib1g-dev \
    autoconf \
    automake \
    libtool \
    libncurses5-dev \
    libncursesw5-dev \
    git \
    wget

# Install Samtools 1.3 
ADD https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2 /tmp
RUN cd /usr/local/bin; tar -jxvf /tmp/samtools*.tar.bz2
RUN cd /usr/local/bin/samtools-* && ./configure && make && make install \
    && make all all-htslib \ 
    && cp htslib-*/tabix htslib-*/htsfile htslib-*/bgzip /usr/local/bin
