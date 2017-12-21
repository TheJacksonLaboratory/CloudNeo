FROM ubuntu:14.04

# This will install Oracle Java 7
RUN apt-get -y update \ 
    && apt-get -y install software-properties-common \ 
    python-software-properties \
    build-essential

# Install Java
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean


# Install some basic utils
RUN apt-get -y install curl \ 
    unzip \ 
    perl \
    vim \
    wget \
    tcsh \
    bzip2

# Install perl modules 
RUN apt-get install -y cpanminus

RUN cpanm Math::BaseCalc \
  List::MoreUtils \
  List::Util \
  Parallel::ForkManager \
  POSIX \
  Dumpvalue \
  Data::Dumper

# Install Bioperl
RUN cpanm -v --force \
 CJFIELDS/BioPerl-1.6.924.tar.gz

# Install Samtools
RUN apt-get -y install samtools=0.1.19-1

# Install GATK
RUN apt-get -y install libncurses5-dev \
   zlib1g-dev
COPY GenomeAnalysisTK-3.5-0-g36282e4.tar.bz2 /usr/local/bin/gatk/
RUN cd /usr/local/bin/gatk; tar -xvf GenomeAnalysisTK*.tar.bz2; rm GenomeAnalysisTK*.tar.bz2;

# Install MuTect
ENV mutect_package mutect-1.1.7.jar
COPY mutect-1.1.7.jar /usr/local/bin/mutect/

# Install Strelka
ADD https://sites.google.com/site/strelkasomaticvariantcaller/home/download/strelka_workflow-1.0.15.tar.gz /tmp
RUN apt-get -y install rsync
RUN cd /tmp; tar -zxvf strelka_workflow*.tar.gz; cd strelka_*; ./configure --prefix=/usr/local/bin/strelka/; make
RUN rm -rf /tmp/strelka_workflow*

# Install Novoalign tools
COPY novocraftV3.04.01.Linux3.0.tar.gz /tmp 
RUN cd /usr/local/bin; tar -xzvf /tmp/novocraft*.tar;  rm -rf /tmp/novocraft*.tar

# Install Polysolver
ADD https://www.broadinstitute.org/cancer/cga/sites/default/files/data/tools/polysolver/polysolver_v1.0.tar.gz /tmp
RUN cd /usr/local/bin; tar -xvf /tmp/polysolver*.tar.gz; rm -rf /tmp/polysolver*.tar.gz

# Clean-Up
RUN apt-get clean
RUN rm -rf /tmp/*

RUN wget http://sourceforge.net/projects/samtools/files/samtools/0.1.18/samtools-0.1.18.tar.bz2 && mv samtools-0.1.* /tmp
RUN cd /tmp && tar -jxvf samtools-0.1.18.tar.bz2 && cd samtools-0.1.18
WORKDIR /tmp/samtools-0.1.18
RUN make CFLAGS=-fPIC
RUN export SAMTOOLS=/tmp/samtools-0.1.18
ENV SAMTOOLS /tmp/samtools-0.1.18
RUN cpanm -v --force Bio::DB::Sam

#RUN cpanm -v --force Bio::DB::Sam

ENV PSHOME /usr/local/bin/polysolver
ENV SAMTOOLS_DIR /usr/bin
ENV JAVA_DIR /usr/lib/jvm/java-7-oracle/jre/bin
ENV NOVOALIGN_DIR /usr/local/bin/novocraft 
ENV GATK_DIR /usr/local/bin/gatk
ENV MUTECT_DIR usr/local/bin/mutect
ENV STRELKA_DIR /usr/local/bin/strelka/bin
ENV TMP_DIR /tmp
ENV NUM_THREADS 8
