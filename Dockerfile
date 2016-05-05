FROM python:2.7-alpine
MAINTAINER Achilleas Pipinellis

# Install Git
RUN apk add --no-cache --virtual .fetch-deps git perl

# Install pelican and its dependencies
RUN pip install pelican markdown typogrify bs4
