FROM ubuntu:14.04

# Update package
RUN apt-get -y update \ 
    && apt-get -y install software-properties-common \ 
    python-software-properties \
    build-essential

RUN apt-get install -y wget \ 
    csh \
    tcsh \
    vim \
    gawk

COPY netMHCpan-3.0a.tar.gz /
RUN tar -zxvf netMHCpan-3.0a.tar.gz; rm netMHCpan-3.0a.tar.gz;
RUN wget http://www.cbs.dtu.dk/services/NetMHCpan-3.0/data.tar.gz -P netMHCpan-3.0/
RUN cd netMHCpan-3.0 && gunzip -c data.tar.gz | tar xvf -
RUN mv netMHCpan-3.0/ /opt/
RUN mkdir -p /scratch

RUN apt-get install -y python-biopython
COPY netmhcpan-parser.py /opt/netmhcpan_parser.py
RUN chmod 777 /opt/netmhcpan_parser.py
## Install Samtools 1.3 
#ADD https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2 /tmp
#RUN cd /usr/local/bin; tar -jxvf /tmp/samtools*.tar.bz2
#RUN cd /usr/local/bin/samtools-* && ./configure && make && make install \
#    && make all all-htslib \ 
#    && cp htslib-*/tabix htslib-*/htsfile htslib-*/bgzip /usr/local/bin
