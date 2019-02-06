FROM renovate/python@sha256:fbff44a2bb3a29174410b93d23564fba01738cbccb4c00c12466568ca39d6b14

USER root

RUN apt-get update && apt-get install -y python3-distutils && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
