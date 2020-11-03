FROM scratch

ADD centos-8-x86_64.tar.xz /

RUN yum update -y && \
    yum clean all

CMD ["/bin/bash"]
