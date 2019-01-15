FROM renovate/python@sha256:cb38af7987bfbc3e4b0a6613d52855a737c6484f816844b26b83a39bafb35400

USER root

RUN apt-get update && apt-get install -y python3-distutils && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
