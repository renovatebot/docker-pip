FROM renovate/python@sha256:7b3b2f8c0e13ef53e869a267b7fded68511be23868e05e91ae7bf37a38762b32

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
