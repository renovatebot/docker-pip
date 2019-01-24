FROM renovate/python@sha256:77e04a5e4e3e97c7a1ae39dd1e8974a560b9a14c2a08c2db324fa7ddcc77c0df

USER root

RUN apt-get update && apt-get install -y python3-distutils && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
