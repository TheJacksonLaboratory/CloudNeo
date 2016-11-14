FROM ubuntu:14.04

# Update package
RUN apt-get -y update \ 
    && apt-get -y install software-properties-common \ 
    python-software-properties \
    build-essential

# Install modules
RUN apt-get -y install git \
    wget \
    unzip \
    curl \
    vim \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libdbi-perl

# Install Samtools 1.3
RUN wget https://github.com/samtools/htslib/releases/download/1.3/htslib-1.3.tar.bz2
RUN cd /usr/local/bin/; tar -jxvf /htslib-*; cd /usr/local/bin/htslib* && ./configure && make && make install
                                                                             
# Install perl modules
RUN apt-get install -y cpanminus

RUN cpanm -v --force  Math::BaseCalc \
    List::MoreUtils \
    File::Copy::Recursive \
    Archive::Zip \
    Bio::Root::Version \ 
    Bio::DB::HTS \
    JSON

# Install Samtools 1.3 
ADD https://github.com/Ensembl/ensembl-tools/archive/release/84.zip /usr/local/bin
RUN cd /usr/local/bin/ && unzip 84.zip
RUN apt-get install -y \
  libarchive-zip-perl \
  libdbd-mysql-perl

RUN cd && mkdir /src
RUN cd /src
RUN wget ftp://ftp.ensembl.org/pub/ensembl-api.tar.gz
RUN wget http://bioperl.org/DIST/BioPerl-1.6.1.tar.gz 

# Unpack the downloaded files. In the Unix command line, type:
RUN tar zxvf ensembl-api.tar.gz
RUN tar zxvf BioPerl-1.6.1.tar.gz


ENV PERL5LIB ${PERL5LIB}:/src/bioperl-1.6.1
ENV PERL5LIB ${PERL5LIB}:/src/ensembl/modules
ENV PERL5LIB ${PERL5LIB}:/src/ensembl-compara/modules
ENV PERL5LIB ${PERL5LIB}:/src/ensembl-variation/modules
ENV PERL5LIB ${PERL5LIB}:/src/ensembl-funcgen/modules
RUN export PERL5LIB
RUN echo $PERL5LIB


RUN cd /src && git clone https://github.com/Ensembl/ensembl-io.git
ENV PERL5LIB ${PERL5LIB}:/src/ensembl-io/modules
RUN export PERL5LIB
RUN echo PERL5LIB


COPY INSTALL.pl /usr/local/bin/ensembl-tools-release-84/scripts/variant_effect_predictor/INSTALL.pl
RUN perl /usr/local/bin/ensembl-tools-release-84/scripts/variant_effect_predictor/INSTALL.pl
