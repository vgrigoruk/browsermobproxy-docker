FROM java:8-jre-alpine

ARG VERSION
ENV VERSION ${VERSION}

WORKDIR /app
ADD https://github.com/lightbody/browsermob-proxy/releases/download/browsermob-proxy-$VERSION/browsermob-proxy-$VERSION-bin.zip /app/
RUN unzip browsermob-proxy-$VERSION-bin.zip && \
    rm browsermob-proxy-$VERSION-bin.zip && \
    mv /app/browsermob-proxy-$VERSION /app/browsermob-proxy

EXPOSE 8080-9999
ENTRYPOINT ["/app/browsermob-proxy/bin/browsermob-proxy"]
