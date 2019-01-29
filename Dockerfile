FROM renovate/python@sha256:c1a6298f9829c41f1bf5aaa3e4abf2016cbedd29b1d9f563d35278d6dd34f108

USER root

RUN apt-get update && apt-get install -y python3-distutils && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
