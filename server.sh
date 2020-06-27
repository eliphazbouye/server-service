#!/usr/bin/bash

# systemctl start httpd


echo "Hello $(whoami) What command you want run?"

read WhatDoing


# Start service
if [ "$WhatDoing" == "httpd" ]
then 	
	 systemctl start httpd
	 "Httpd is running now"

elif [ "$WhatDoing" == "mariadb" ]
then 
	 systemctl start mariadb
	echo "Mariadb is running now"
#Start all service
elif [ "$WhatDoing" == "all" ] 
then
	 systemctl start mariadb
	 systemctl start httpd
	echo "all is running now"

#Restart Service
elif [ "$WhatDoing" == "restart httpd" ]
then
	 systemctl restart httpd

elif [ "$WhatDoing" == "restart mariadb" ]
then
	 systemctl restart mariadb


#Stop service
elif [ "$WhatDoing" == "stop httpd" ]
then
	 systemctl stop httpd

elif [ "$WhatDoing" == "stop mariadb" ]
then
	 systemctl stop mariadb

#Stop all
elif [ "$WhatDoing" == "stop all" ]
then
	 systemctl stop httpd
	 systemctl stop mariadb
fi




