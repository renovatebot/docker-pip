FROM renovate/python@sha256:ee8d21d19735a2c8dc3bf9d5fef247674c269580db76744d1c9ef33b65a7ca89

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
