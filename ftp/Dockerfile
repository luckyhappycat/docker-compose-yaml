FROM centos:centos8.4.2105

RUN sed -e "s|^mirrorlist=|#mirrorlist=|g" \
    -e "s|^#baseurl=http://mirror.centos.org/\$contentdir/\$releasever|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos-vault/8.4.2105|g" \
    -i.bak \
    /etc/yum.repos.d/CentOS-*.repo
RUN yum install vsftpd -y
ENV TZ=Asia/Shanghai