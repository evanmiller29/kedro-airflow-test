FROM puckel/docker-airflow:1.10.3

COPY requirements.txt /usr/local/airflow
WORKDIR /usr/local/airflow

USER root
RUN apt-get update && apt-get install build-essential

RUN pip install -r requirements.txt
RUN mkdir -p /usr/local/airflow/rossman