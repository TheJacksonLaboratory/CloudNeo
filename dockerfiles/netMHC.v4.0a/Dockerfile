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

WORKDIR /opt
COPY netMHC-4.0a.Linux.tar.gz /opt
RUN tar -zxvf netMHC-4.0a.Linux.tar.gz; rm netMHC-4.0a.Linux.tar.gz;
RUN wget http://www.cbs.dtu.dk/services/NetMHC-4.0/data.tar.gz -P netMHC-4.0/
RUN cd netMHC-4.0 && gunzip -c data.tar.gz | tar xvf -
RUN mkdir -p /scratch

RUN apt-get install -y python-biopython
COPY netmhc-parser.py /opt/netmhc_parser.py
RUN chmod 777 /opt/netmhc_parser.py
ENV NETMHC /opt/netMHC-4.0
ENV TMPDIR /tmp
RUN mkdir /opt/netMHC-4.0/bin && cp /opt/netMHC-4.0/Linux_x86_64/bin/* /opt/netMHC-4.0/bin
