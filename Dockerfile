FROM centos:7
RUN yum -y install git
RUN git clone https://github.com/chiefexb/counter2.git
