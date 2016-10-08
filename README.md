# docker-pelican

This is a meshup from the forked [docker-pelican by Achilleas Pipinellis](https://github.com/axilleas/docker-pelican)
and mixins from [docker-pelican by the Api Hackers](https://github.com/apihackers/docker-pelican)
resulting into a docker image for static site generation with [Pelican](http://blog.getpelican.com/),
ready to import WordPress blogs.

Because of some unicode issues I encountered when transforming WordPress blogs
into static sites I based this image upon python 2.7 with all the text extras
from the Api Hackers' Dockerfile. I have just had to add lxml.

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

