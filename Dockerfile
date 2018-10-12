FROM renovate/python

USER root

RUN apt-get update && apt-get install -y python3-distutils && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
