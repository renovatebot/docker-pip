FROM renovate/python@sha256:72923611b7860c035a654c90fe880febc3e8d594e23736e49ca1511130022aa1

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
