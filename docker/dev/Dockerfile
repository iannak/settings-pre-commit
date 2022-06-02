FROM python:3.8.11-slim-buster


# netcat is necessary to work with ./wait-for script
# to use at command for api container.
RUN apt-get update && apt-get install -y \
    default-libmysqlclient-dev \
    gcc \
    git \
    libcurl4-openssl-dev \
    libssl-dev \
    netcat \
    openssh-client

RUN apt-get clean && apt-get autoremove

EXPOSE 8080

ENV PYTHONUNBUFFERED 1

COPY /requirements/dev.txt dev.txt
RUN pip install -r dev.txt

COPY /requirements/tests.txt tests.txt
RUN pip install -r tests.txt

COPY . /code/

WORKDIR /code/src/app/
