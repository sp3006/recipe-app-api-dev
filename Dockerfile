FROM python:3.7-alpine
MAINTAINER sushant.paricharak@gmail.com

ENV PYTHONUNBUFFERED 1

## Copy from git location to doceker image
COPY ./requirements.txt /requirements.txt

## Run the requirements 
RUN pip install -r ./requirements.txt

## Create the app folder in docker location
RUN mkdir /app
## Change our working directory to app
WORKDIR /app
## Copy the git app filder the folder inised the docker image
COPY ./app /app

## Add user the which run the application using docker
RUN  adduser -D WebdevUser
USER WebdevUser
