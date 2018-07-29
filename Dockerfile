FROM python:3-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN apk update && apk upgrade && pip install -U pip
RUN apk add --update alpine-sdk make gcc python3-dev python-dev libxslt-dev libxml2-dev libc-dev openssl-dev libffi-dev zlib-dev py-pip \
    && rm -rf /var/cache/apk/* \
    && pip install cryptography \
    && pip install --upgrade setuptools
RUN pip install -r requirements.txt
ADD . /code/

