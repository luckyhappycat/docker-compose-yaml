docker-compose down
docker build -t vsftpd-centos8 .
docker-compose up -d

# ftp://192.168.12.249/
# ftp://172.17.150.30/