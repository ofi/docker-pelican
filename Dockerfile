FROM python:2.7-alpine
MAINTAINER Olaf Fiedler

# Install common dependencies
RUN apk --update --no-cache add bash curl make yaml gettext cairo libffi libxml2 libxslt

# Install pelican and its dependencies
RUN apk --no-cache add --virtual build-dependencies \
        python-dev yaml-dev build-base cairo-dev libffi-dev libxml2-dev libxslt-dev\
    && pip install --upgrade pip pelican Markdown pyyaml pygments feedparser \
        feedgenerator typogrify awesome-slugify invoke babel weasyprint \
        BeautifulSoup4 lxml \
    && apk del build-dependencies \
    && rm -r /root/.cache /var/cache/apk/*

