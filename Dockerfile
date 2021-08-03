FROM python:3.8
LABEL maintainer="Juan C Martinez"

COPY . /src
WORKDIR /src

RUN pip install -r requirements.txt

# command to run on container start
CMD [ "uvicorn", "main:app", "--reload", "--host", "0.0.0.0" ]