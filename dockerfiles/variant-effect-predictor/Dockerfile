FROM ubuntu:14.04

# install some basic tools
RUN apt-get update && apt-get install -y \
	autoconf \
	automake \
	make \
	g++ \
	gcc \
	build-essential \ 
	zlib1g-dev \
	libgsl0-dev \
	perl \
	curl \
	git \
	wget \
	unzip \
	tabix \
	libncurses5-dev

RUN apt-get install -y cpanminus
RUN apt-get install -y libmysqlclient-dev
RUN cpanm CPAN::Meta \
	Archive::Zip \
	Archive::Extract \
	DBI \
	DBD::mysql \ 
	JSON \
	DBD::SQLite \
	Set::IntervalTree

# install samtools
WORKDIR /opt
RUN wget https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
RUN tar jxf samtools-1.2.tar.bz2
WORKDIR /opt/samtools-1.2
RUN make
RUN make install

WORKDIR /opt
RUN rm samtools-1.2.tar.bz2

RUN wget https://github.com/Ensembl/ensembl-tools/archive/release/83.zip
RUN mkdir variant_effect_predictor_83
RUN mkdir variant_effect_predictor_83/cache
RUN chmod 777 variant_effect_predictor_83/cache
RUN unzip 83.zip -d variant_effect_predictor_83
RUN rm 83.zip 
WORKDIR /opt/variant_effect_predictor_83/ensembl-tools-release-83/scripts/variant_effect_predictor/
RUN perl INSTALL.pl --AUTO ap --PLUGINS LoF --CACHEDIR /opt/variant_effect_predictor_83/cache
WORKDIR /opt/variant_effect_predictor_83/cache/Plugins

# copy splice_module.pl 
RUN wget https://github.com/konradjk/loftee/archive/v0.3-beta.zip
RUN unzip v0.3-beta.zip
RUN cp loftee-0.3-beta/splice_module.pl .  
RUN rm -rf v0.3-beta.zip loftee-0.3-beta
#https://raw.githubusercontent.com/konradjk/loftee/master/splice_module.pl
