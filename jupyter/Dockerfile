FROM python:3.7-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN useradd -ms /bin/bash python

USER python

ENV SERVER_IP=${SERVER_IP:-'0.0.0.0'}

ENTRYPOINT jupyter notebook --ip=$SERVER_IP