FROM centos:7
RUN yum install -y epel-release
RUN yum install -y git libvirt-lib libvirt-devel which qemu-kvm glide wget tar gcc pkgconfig
RUN wget https://storage.googleapis.com/golang/go1.9.3.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.9.3.linux-amd64.tar.gz

ADD script.sh script.sh
RUN chmod +x script.sh
ENTRYPOINT ["/script.sh"]
