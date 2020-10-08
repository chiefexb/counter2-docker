FROM centos:7
RUN yum -y install epel-release git nginx uwsgi gcc python3 python3-devel python3-pip wget gcc make unzip  && \
    cd /home/ && git clone https://github.com/chiefexb/counter2.git && \
    python3 -m pip install virtualenv && \
    mkdir  /home/counter2/t5/venv && python3 -m virtualenv /home/counter2/t5/venv  && \
    source /home/counter2/t5/venv/bin/activate 
#    python -m pip install -r /home/counter2/t5/req
RUN cd /home/ && wget https://www.sqlite.org/snapshot/sqlite-snapshot-202010021515.tar.gz && tar xzvf sqlite-snapshot-202010021515.tar.gz 
#RUN cd  /home/counter2/t5/ && python ./manage.py 
