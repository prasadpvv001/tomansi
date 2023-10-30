#!/bin/bash/
sudo apt-cache search tomcat
sudo apt install tomcat9 tomcat9-admin -y
sudo ufw allow from any to any port 9090 proto tcp
rm -rf /etc/tomcat9/server.xml
rm -rf /etc/tomcat9/tomcat-users.xml
sudo cp /home/ubuntu/tomct/server.xml /etc/tomcat9/
sudo cp /home/ubuntu/tomct/tomcat-users.xml /etc/tomcat9/
#sudo vim /etc/tomcat9/server.xml
	// Change the port number from 8080 to 9090
#sudo vim /etc/tomcat9/tomcat-users.xml
	// inside users.xml paste below commands and allign properly
#<role rolename="admin-gui"/>
#<role rolename="manager-gui"/gt;
#<user username="tomcat" password="pass" roles="admin-gui,manager-gui"/>

sudo systemctl restart tomcat9
#sudo systemctl restart tomcat9
sudo systemctl status tomcat9
