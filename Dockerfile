FROM renovate/python@sha256:2db60fea6e592fdd0f9246482f567b70863a299cf009e889a455bbd21cdca0cf

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
