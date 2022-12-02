FROM androidsdk/android-31:latest

RUN curl -sL https://deb.nodesource.com/setup_14.x -o /tmp/nodesource_setup.sh && \
    bash /tmp/nodesource_setup.sh && \
    apt install -y nodejs gradle && \
    sdkmanager --sdk_root=/opt/android-sdk-linux/ "build-tools;30.0.3" && \
    npm install -g cordova

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
