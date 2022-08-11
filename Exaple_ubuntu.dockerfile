FROM ubuntu:20.04

LABEL maintainer="Name_of_maintainer"
LABEL version="Specify which version "
LABEL description="Put desription "

ENV DEBIAN_FRONTEND noninteractive

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install git make gcc pkg-config autoconf apt-utils build-essential apt-transport-https wget locales


WORKDIR /app
COPY requirements.txt .
# Installing python dependencies for the module 
RUN   pip install -r requirements.txt

COPY . .
# Running the FastAPI framwork 
CMD ["python3", "app.py"]
