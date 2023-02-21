FROM centos:centos7

RUN yum install -y \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    https://repo.ius.io/ius-release-el7.rpm \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
  && rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
  && yum remove git \
  && yum update -y \
  && yum install --enablerepo="remi" -y \
    git236 vim-enhanced wget \
    rpm-build rpmdevtools rpmlint gcc make bison re2c \
  && yum clean all \
  && rpmdev-setuptree 
