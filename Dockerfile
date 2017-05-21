FROM armhf/ubuntu
MAINTAINER ivyleavedtoadflax
# Originally made by: https://github.com/matteoredaelli/docker-mongodb-rpi

# Install required packages
RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y --no-install-suggests mongodb
RUN rm -rf /var/lib/apt/lists/*

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017

ENTRYPOINT /usr/bin/mongod

CMD ["mongod"]

