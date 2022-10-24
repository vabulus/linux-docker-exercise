FROM debian:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install apache2 php libapache2-mod-php
EXPOSE 80
COPY ./entry_script.sh /
CMD ["sh", "entry_script.sh"]