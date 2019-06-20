FROM centos:latest

ENV PARROT_HTTP_PROXY="http://sci-squid01.jlab.org:3128|http://sci-squid02.jlab.org:3128"

RUN yum update -y \
    && yum install -y https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm \
    && yum install -y cctools \
    && yum clean all

CMD [ "/bin/bash" ]
# Inside container, run: parrot_run ls /cvmfs/oasis.opensciencegrid.org/
