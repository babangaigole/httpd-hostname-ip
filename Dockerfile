FROM centos:7

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum update -y; yum install httpd net-tools php -y

COPY index.sh /tmp/index.sh
COPY startup.sh /tmp/startup.sh
RUN echo "sh /tmp/index.sh > /var/www/html/index.html" >> /root/.bashrc

CMD ["sh", "/tmp/startup.sh", ";", "httpd", "-DFOREGROUND"]
