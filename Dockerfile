FROM python:2.7-alpine
MAINTAINER Achilleas Pipinellis

# Install pelican and its dependencies
RUN pip install pelican markdown typogrify bs4
