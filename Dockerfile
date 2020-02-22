FROM renovate/python@sha256:b84fb66ecbaa3170b68b1e2f7ae0625c96eec1b68dd8a14e067d27bcc1e08ae6

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
