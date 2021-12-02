FROM python:3.9-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ADD . /code
WORKDIR /code

RUN pip install --upgrade pip

# Install poetry:
RUN pip install poetry

# Install only dependencies:
RUN poetry export -f requirements.txt --output requirements.txt
RUN pip install -r requirements.txt

COPY . /code/