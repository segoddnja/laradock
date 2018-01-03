FROM mongo:3.2

VOLUME /data/db /data/configdb

CMD ["mongod"]

RUN apt-get update
RUN apt-get install wget python build-essential -y

RUN wget -qO- https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install everything else
RUN apt-get update
RUN apt-get install unzip
RUN apt-get install graphicsmagick -y

COPY dist.zip /tmp
RUN unzip /tmp/dist.zip -d /usr/lib
RUN cd /usr/lib/ImageProcessor && npm i && mkdir runtime runtime/storage runtime/cache

ADD ./docker-run.sh /usr/share/image-processor/
ADD ./local_config.js /usr/lib/ImageProcessor
CMD ["sh", "/usr/share/image-processor/docker-run.sh"]

EXPOSE 8090