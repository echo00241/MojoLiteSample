FROM centos:6.6


RUN echo 'NETWORKING=yes' > /etc/sysconfig/network
RUN rpm -ivh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm

RUN yum update -y
RUN yum install -y passwd
RUN yum install -y sudo
RUN yum install -y git
RUN yum install -y tar
RUN yum install -y gcc

RUN git clone https://github.com/riywo/anyenv ~/.anyenv \ 
  && echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc \ 
  && echo 'eval "$(anyenv init -)"' >> ~/.bashrc
RUN source ~/.bashrc \ 
  && anyenv install plenv
RUN source ~/.bashrc \ 
  && plenv install 5.21.11 \ 
  && plenv global 5.21.11

# supervisor
#
#RUN yum install -y supervisor
#RUN echo '[supervisord]' >> /etc/supervisord.conf
#RUN echo 'nodaemon=true' >> /etc/supervisord.conf
#
##RUN echo '[program:mysql]' >> /etc/supervisord.conf
##RUN echo 'command=service mysqld start' >> /etc/supervisord.conf
#
#CMD /usr/bin/supervisord -c /etc/supervisord.conf
