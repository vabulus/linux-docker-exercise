# linux-docker-exercise
## Installation 
1. `git clone https://github.com/vabulus/linux-docker-exercise.git`
2. `cd linux-docker-exercise`
3. `docker build -t webserver .`
4. `docker run -it -p 8099:80 -d webserver`
5. `ip addr`

Open in browser: `http://[ip]:8099/hello-world.php` (IP found out with command #5)
