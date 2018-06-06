FROM java:8-jre-alpine

ARG VERSION

ADD https://github.com/lightbody/browsermob-proxy/releases/download/browsermob-proxy-$VERSION/browsermob-proxy-$VERSION-bin.zip /app/
WORKDIR /app
RUN unzip browsermob-proxy-$VERSION-bin.zip && rm browsermob-proxy-$VERSION-bin.zip
EXPOSE 8080-9999
ENTRYPOINT /app/browsermob-proxy-$VERSION/bin/browsermob-proxy
