FROM renovate/python@sha256:d8c8a8fb10f854cdc3e95ca8d18f2823f3de6dd57495fb83712e8b4e6b47afe1

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
