FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y nginx
RUN useradd -ms /bin/bash nginx
ADD --chown=nginx:nginx index.html /var/www/html/index.nginx-debiean.html
EXPOSE 80/tcp
EXPOSE 443/tcp
CMD ["nginx","-g","daemon off";]
