FROM renovate/python@sha256:08b7d43e6b9deac7aecf7b836e486d62472b8aaee9079dc7076c1abe4cedcae2

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
