FROM python:3.9-slim

WORKDIR src

RUN pip install --upgrade pip && \
    apt-get update && \
    pip install mkdocs==1.2.2

CMD mkdocs serve -a `hostname -i`:9304

EXPOSE 9304



