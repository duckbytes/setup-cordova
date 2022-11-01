FROM runmymind/docker-android-sdk:alpine-standalone

RUN apk add alpine-baselayout=3.2.0-r22 && \
    apk update && apk upgrade && \
    apk add gradle npm && \
    npm config set unsafe-perm true && \
    npm install -g cordova

ENV JAVA_HOME "/usr/lib/jvm/java-11-openjdk"

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
