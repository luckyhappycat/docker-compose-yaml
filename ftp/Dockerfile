FROM centos:8.4.2105

RUN sed -e "s|^mirrorlist=|#mirrorlist=|g" \
    -e "s|^#baseurl=http://mirror.centos.org/\$contentdir/\$releasever|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos-vault/8.4.2105|g" \
    -i.bak \
    /etc/yum.repos.d/CentOS-*.repo

RUN yum install vsftpd -y && rm -rf /var/cache/yum/* && mkdir -p /var/log/vsftpd

ENV TZ=Asia/Shanghai

RUN useradd -ms /bin/bash guest && echo 'guest:guest' | chpasswd

COPY vsftp.conf /etc/vsftp/vsftp.conf
COPY vsftp_ftps.conf /etc/vsftp/vsftp_ftps.conf
COPY vsftp_ftps_tls.conf /etc/vsftp/vsftp_ftps_tls.conf
COPY vsftp_ftps_implicit.conf /etc/vsftp/vsftp_ftps_implicit.conf
COPY start.sh /

RUN chmod +x /start.sh
RUN mkdir -p /home/vsftpd/
RUN chown -R ftp:ftp /home/vsftpd/

VOLUME /home/guest
VOLUME /var/log/vsftpd

EXPOSE 20 21 21100-21110

ENTRYPOINT ["/start.sh"]