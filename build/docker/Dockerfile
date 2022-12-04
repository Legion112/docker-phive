ARG PHP_TAG=8.1-cli-alpine
FROM php:$PHP_TAG
LABEL org.opencontainers.image.url=https://github.com/Legion112/docker-phive/blob/main/build/docker/Dockerfile
ARG VERSION
RUN apk --no-cache add gnupg \
  && wget -O phive.phar https://github.com/phar-io/phive/releases/download/$VERSION/phive-$VERSION.phar \
  && wget -O phive.phar.asc https://github.com/phar-io/phive/releases/download/$VERSION/phive-$VERSION.phar.asc \
  && gpg --keyserver hkps://keys.openpgp.org --recv-keys 0x9D8A98B29B2D5D79 \
  && gpg --verify phive.phar.asc phive.phar \
  && chmod +x phive.phar \
  && mv phive.phar /usr/local/bin/phive;

COPY bin/entrypoint /usr/bin

ENTRYPOINT ["/usr/bin/entrypoint"]