FROM python:3.11

WORKDIR /code

COPY requirements.txt /code/

RUN apt-get update && apt-get install -y \
    build-essential \
    libffi-dev \
    libssl-dev \
    python3-dev \
    python3-pip \
    python3-setuptools

RUN pip install PyYAML==6.0

RUN pip install --no-cache-dir -r requirements.txt

COPY . /code/