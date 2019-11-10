FROM renovate/python@sha256:eb74c878b535a64d5ec13d5c42b89538f0bdbe95f08d0bff1d42aa075d456707

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
