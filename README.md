

# build image
$ docker build -t rhel8-apache:1.0 -f el.dockerfile .

# run container
$ docker run -d --name web_www -p 8080:80 rhel8-apache:1.0

# test
open web browser http://target-ip:8080/