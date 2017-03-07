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

COPY dockerfiles/netMHCpan.v3.0a/netMHCpan-3.0a.tar.gz /
RUN tar -zxvf netMHCpan-3.0a.tar.gz; rm netMHCpan-3.0a.tar.gz;
RUN wget http://www.cbs.dtu.dk/services/NetMHCpan-3.0/data.tar.gz -P netMHCpan-3.0/
RUN cd netMHCpan-3.0 && gunzip -c data.tar.gz | tar xvf -
RUN mv netMHCpan-3.0/ /opt/
RUN mkdir -p /scratch

RUN apt-get install -y python-biopython
COPY dockerfiles/netMHCpan.v3.0a/netmhcpan-parser.py /netmhcpan_parser.py
RUN chmod 777 /netmhcpan_parser.py
ENV TMPDIR /tmp
RUN sed -i 's/\/usr\/cbs\/packages\/netMHCpan\/3.0\/netMHCpan-3.0/\/opt\/netMHCpan-3.0/g' /opt/netMHCpan-3.0/netMHCpan
