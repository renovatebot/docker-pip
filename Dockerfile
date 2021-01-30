FROM renovate/python@sha256:8fbfe1898db0c3a5347df9206c0168c9efc476a058f7939dc1c92ca2943e31b3

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
