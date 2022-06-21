mkdir -p /data/jenkins_home
chown -R 1000:1000 /data/jenkins_home/

# docker-compose up -d之后
sed -i 's/https:\/\/updates.jenkins.io\/update-center.json/http:\/\/mirrors.tuna.tsinghua.edu.cn\/jenkins\/updates\/update-center.json/g' /data/jenkins_home/hudson.model.UpdateCenter.xml
sed -i 's/https:\/\/updates.jenkins.io\/download/http:\/\/mirrors.tuna.tsinghua.edu.cn\/jenkins/g' /data/jenkins_home/updates/default.json
sed -i 's/www.google.com/www.baidu.com/g' /data/jenkins_home/updates/default.json