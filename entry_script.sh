#!/bin/bash

# install apache and configure firewall to allow apache
apt install apache2 -y

# change the default webindex file to our file
sed -i  "s=# modules, e.g.=<IfModule dir_module>\n\t\tDirectoryIndex hello-world.php\n\t</IfModule>=" /etc/apache2/sites-available/000-default.conf

a2ensite 000-default.conf
apache2ctl -D FOREGROUND
