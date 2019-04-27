FROM renovate/python@sha256:59a3fbeb9fa059c2860441cbfae53383b32a2f8200d5586c923323ca7d5f7fcd

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
