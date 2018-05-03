FROM centos:latest

RUN yum -y update && \
    yum -y upgrade && \
    yum install -y epel-release && \
    yum install -y qpid-dispatch-router qpid-dispatch-tools && \
    yum install -y vim httpd && \
    yum clean all

CMD ["/usr/sbin/qdrouterd"]
