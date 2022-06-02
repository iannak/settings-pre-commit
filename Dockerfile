FROM python:3.8
ENV TZ America/Sao_Paulo
RUN mkdir /config
RUN mkdir /src
WORKDIR /src
