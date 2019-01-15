FROM renovate/python@sha256:81a9b218611c6f78ee3ccbe296550932260e44b4f8de7a40705403096442dc1a

USER root

RUN apt-get update && apt-get install -y python3-distutils && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
