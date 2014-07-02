#
# RedmineBot Dockerfile
#

# Pull base image.
FROM eternnoir/python
MAINTAINER Frank Wang "eternnoir@gmail.com"

RUN pip install twisted
RUN pip install feedparser

ADD . /src

RUN ["python","redmineIRCBot.py"]
