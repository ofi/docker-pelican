# docker-pelican-py2

## Abstract
Containers of the image built from this repo's Dockerfile serve as work horses
for static website generation with [Pelican](http://blog.getpelican.com/).

This is a meshup from the forked [docker-pelican by Achilleas Pipinellis](https://github.com/axilleas/docker-pelican)
and mixins from [docker-pelican by the Api Hackers](https://github.com/apihackers/docker-pelican)
with the added ability to import WordPress blogs.

## Motivation

Because of some unicode issues I encountered when transforming WordPress blogs
into static sites I based this image upon python 2.7 with all the text extras
from the Api Hackers' Dockerfile. I have just had to add lxml.

## Usage

Pretending your website project resides in `/users/joe/sites/blog` you might
start working on it issuing:
``
$ docker run -itv /users/joe/sites/blog:/site -p 8000:8000 docker-pelican-py2 bash
``

Now in the container you can e. g.:

```
    bash-4.3# cd site
    bash-4.3# make devserver
```

which will start Pelican's web/watchdog development server. Back on your host
you can obtain the interface with:

```
    $ docker-machine ip default
    192.168.99.100
```

Which means you can open the site in your browser with URL `http://192.168.99.100:8000`.


## Additional Information

Based upon: [python:2.7-alpine](https://github.com/docker-library/python/blob/855b85c8309e925814dfa97d61310080dcd08db6/2.7/alpine/Dockerfile)

Installed Python modules:

* Pelican
* Markdown
* pyyaml
* pygments
* feedparser
* feedgenerator
* typogrify
* awesome-slugify
* invoke
* babel
* weasyprint
* BeautifulSoup4
* lxml (needs several minutes to build - stay patient)

