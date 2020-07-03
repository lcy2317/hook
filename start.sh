#!/bin/bash
echo "-----------------------starting-----------------------"
yum update java-1.8.0-openjdk*
echo "-------------------------Java-------------------------"
# Java install
java -version
if [ $? -ne 0 ]; then
     yum -y install java-1.8.0-openjdk*
     java -version
fi
echo "-------------------------maven-------------------------"
# maven install
mvn -v
if [ $? -ne 0 ]; then
     wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
     yum -y install apache-maven
     mvn -v
fi
echo "-------------------------git--------------------------"
git --version
if [ $? -ne 0 ]; then
     yum -y install git
     git --version
     # git config core.filemode false
     git config --global user.name "lcy2317"
     git config --global user.email 793097788@qq.com
     ssh-keygen -t rsa -b 4096 -C "793097788@qq.com" 
fi
echo "------------------------docker------------------------"
echo "------------------------package-------------------------"
cd /home/hook
mvn clean compile
mvn package
cd target
nohup java -jar hook.jar > /home/rumtime.log 2>&1 &
echo "hook has started, log see rumtime.log"
echo "--------------------------end---------------------------"
