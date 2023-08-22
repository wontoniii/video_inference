FROM jupyter/base-notebook

USER root

RUN apt update && \
  apt install -y python3-pip

RUN mkdir /data

RUN chmod -R 777 /data

USER jovyan

RUN python3 -m pip install --user --upgrade pip && \
  python3 -m pip install --user scapy dnslib gdown pandas matplotlib scikit-learn numpy seaborn