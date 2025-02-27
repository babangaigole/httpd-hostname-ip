# httpd-hostname-ip
This is a simple web server that prints hostname and IP address.

# Build your own container
$ docker built -t <image-name>:<tag> .

# List image
$ docker image ls

# Create a container using existing image
$ docker container run -dit -p 80:80 --name=cusweb-host gaigoleb2/cuswebsrvhostname:v2

# List container
$ docker container ls -a

# Test container
$ curl <ip-address>:80

# Stop & remove container
$ docker container stop cusweb-host
$ docker container rm cusweb-host
