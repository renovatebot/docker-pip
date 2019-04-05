FROM renovate/python@sha256:f73ad21f5078b6d31f8b6321d1fe7a98393067405c71fb50f6ea505caf82275a

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
