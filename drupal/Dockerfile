ARG PHP_VERSION=8.1
ARG DRUPAL_VERSION=9.5

FROM drupal:${DRUPAL_VERSION}-php${PHP_VERSION}-apache

RUN apt-get -y update && apt-get -y install git sudo vim mariadb-client time

ARG COHESION_VERSION=7.0.x
ARG GH_TOKEN

WORKDIR /opt/drupal/

RUN echo "Building Site Studio version ${COHESION_VERSION}"

RUN composer config -g github-oauth.github.com ${GH_TOKEN} && \
    composer config repositories.cohesion-install git git@github.com:acquia/cohesion-install.git && \
    composer config minimum-stability "dev" && \
    composer config prefer-stable "true" && \
    composer config --no-plugins allow-plugins.cweagans/composer-patches "true"
RUN composer require acquia/cohesion:${COHESION_VERSION} acquia/cohesion-theme:${COHESION_VERSION} && \
    composer require drush/drush:"^10 || ^11" && \
    composer require acquia/cohesion-install:dev-develop

# Add scripts
ADD ./scripts/run.sh .
ADD ./scripts/wait.sh .
ADD ./scripts/install.sh .
ADD ./scripts/rebuild.sh .

