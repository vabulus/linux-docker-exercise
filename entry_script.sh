#!/bin/bash
apt install apache2 -y
mkdir -p /media/data/webroot
chown -R $USER:$USER /media/data/webroot
chmod 777 /media/data/webroot
echo "<?php phpinfo(); ?>" > /media/data/webroot/hello-world.php
echo "<VirtualHost *:80>
       ServerName fabio.localhost   
       ServerAdmin fabio@localhost
       DocumentRoot /media/data/webroot
       <Directory /media/data/webroot/>
               Options Indexes FollowSymLinks MultiViews
               AllowOverride None
               Require all granted
       </Directory>
       <IfModule dir_module>
           DirectoryIndex hello_world.php
       </IfModule>
       ErrorLog /var/log/apache2/error.log
       LogLevel warn
</VirtualHost>" > /etc/apache2/sites-available/000-default.conf
 
a2ensite 000-default.conf
apache2ctl -D FOREGROUND
