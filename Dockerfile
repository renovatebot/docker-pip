FROM renovate/python@sha256:f4841e0bc49c2aa6e2ad900456f99fceebc1a36afb5c0f94c7bf57f3b50f9c26

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
