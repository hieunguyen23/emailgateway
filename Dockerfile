FROM rockylinux/rockylinux
MAINTAINER Nguyen Van Hieu <ngvanhieu112233@gmail.com>

RUN yum update -y && yum install epel-release -y && yum install -y \
  perl \
  glibc-langpack-en \
  net-tools \
  openssh-clients \
  bind-utils \
  rsyslog \
  wget\
  telnet\
  unzip \
  cpan \
  vim \
  which \
  sudo \
  htop \
  gcc 

RUN cpan -i Encoding::FixLatin && cpan -i Digest::SHA1

RUN ln -s -f /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

ENV LANGUAGE=en_US.UTF-8

ENV LC_ALL=en_US.UTF-8

VOLUME ["/etc/postfix", "/etc/MailScanner", "/var/lib/mysql", "/var/log"]

EXPOSE 25 90 7790

COPY install /opt/

ENTRYPOINT ["/bin/bash", "/opt/build.sh", "-d"]


