FROM renovate/python@sha256:7d5ecefeddb973d5ebd9784905e89155121f7496f28568f272dd9fede2d46229

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
