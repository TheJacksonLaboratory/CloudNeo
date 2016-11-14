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

# Install BWA 
ADD http://downloads.sourceforge.net/project/bio-bwa/bwa-0.7.13.tar.bz2 /tmp
RUN cd /tmp; tar -jxvf /tmp/bwa*.tar.bz2
RUN cd /tmp/bwa-* &&  make && cp ./bwa /usr/local/bin
