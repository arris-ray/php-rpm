FROM centos:centos7

RUN yum install -y https://repo.ius.io/ius-release-el7.rpm https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
  && yum remove git \
  && yum install -y \
    git236 vim-enhanced \
    rpm-build rpmdevtools gcc make \
  && yum clean all
