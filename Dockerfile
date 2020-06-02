FROM runmymind/docker-android-sdk:alpine-standalone

RUN apk update && apk upgrade && \
    curl -s "https://get.sdkman.io" | bash \
    source "$HOME/.sdkman/bin/sdkman-init.sh" \
    sdk install gradle 6.4.1 \
    npm config set unsafe-perm true && \
    npm install -g cordova

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
