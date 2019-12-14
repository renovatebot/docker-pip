FROM renovate/python@sha256:a8e65d5d534b760a6de027adcc286a6979fcdd4efb7a216c94bef96b85f93811

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
