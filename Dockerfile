FROM renovate/python@sha256:9c504906a47177af692792203d92e6a0089d38a9e0ec18d1d470f460e788272a

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
