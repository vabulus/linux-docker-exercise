Simple repository, to learn the very basics of Docker, Dockerfile, Apache Server, Bash Scripts 

## 0 Installation of docker-engine
1. `cd ~`
2. `curl -fsSL https://get.docker.com -o get-docker.sh`  
3. `sudo sh get-docker.sh`
4. (optional) `sudo groupadd docker`
5. (optional) `sudo usermod -aG docker $USER`
6. (optional) `newgrp docker`

## 1 Installation of docker container
1. `git clone https://github.com/vabulus/linux-docker-exercise.git`
2. `cd linux-docker-exercise`
3. `docker build -t webserver .`
4. `docker run -it -p 80:80 -d -v /media/data/webroot:/var/www/html webserver`
5. `ip addr`

Open in browser: `http://[ip]:80` (IP found out with command #5)
