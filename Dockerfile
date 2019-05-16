FROM renovate/python@sha256:a683f85d67da7182f67d5eca5414d755a1c23cb67a88067328d0b8900961689a

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
