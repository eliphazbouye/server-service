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
elif [ "$WhatDoing" == "restart h" ]
then
	 systemctl restart httpd

elif [ "$WhatDoing" == "restart m" ]
then
	 systemctl restart mariadb


#Stop service
elif [ "$WhatDoing" == "stop h" ]
then
	 systemctl stop httpd

elif [ "$WhatDoing" == "stop m" ]
then
	 systemctl stop mariadb

#Stop all
elif [ "$WhatDoing" == "stop all" ]
then
	 systemctl stop httpd
	 systemctl stop mariadb

# Status all
elif [ "$WhatDoing" == "status all" ]
then 
	 systemctl status httpd
	 systemctl status mariadb
# Status httpd
elif [ "$WhatDoing" == "status m" ]
then 
	 systemctl status mariadb

# Status mariadb
elif [ "$WhatDoing" == "status h" ]
then 
	 systemctl status httpd
fi




