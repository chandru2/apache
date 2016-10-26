# "ported" by Adam Miller <maxamillion@fedoraproject.org> from#   https://github.com/fedora-cloud/Fedora-Dockerfiles## Originally written for Fedora-Dockerfiles by#   scollier <scollier@redhat.com>
FROM centos:centos6MAINTAINER The CentOS Project <cloud-ops@centos.org>
RUN yum -y update; yum clean allRUN yum -y install epel-release; yum clean allRUN yum -y install nginx; yum clean allRUN echo "daemon off;" >> /etc/nginx/nginx.confRUN echo "nginx on CentOS 6 inside Docker" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD [ "/usr/sbin/nginx" ]
