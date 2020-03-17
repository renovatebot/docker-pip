FROM renovate/python@sha256:0792eecf2c3815ae4f1e978a8bd491ad449a3daba5727c2ea11f5005f1136762

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
