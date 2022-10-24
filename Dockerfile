FROM debian:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install apache2 php libapache2-mod-php
RUN sed -i  "s=# modules, e.g.=<IfModule dir_module>\n\t\tDirectoryIndex hello-world.php\n\t</IfModule>=" /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD [ "apache2ctl", "-D", "FOREGROUND" ]