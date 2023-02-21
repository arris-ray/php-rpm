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
    rpm-build rpmdevtools rpmlint gcc make \
  && yum-builddep --enablerepo="remi" -y /workspaces/php-rpm/php74.spec \
  && yum clean all

RUN rpmdev-setuptree \
  && cd /root/rpmbuild/SOURCES \
  && cp /workspaces/php-rpm/* . \
  && wget https://github.com/arris-ray/php-src/archive/refs/heads/PHP-7.4.34.tar.gz 
