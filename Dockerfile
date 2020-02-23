FROM renovate/python@sha256:bc7bd1f25ea221c57d214aba02462c38de8a2ab39a1e04b6ad6bd7da8933cbb3

USER root

RUN apt-get update && apt-get install -y python3-distutils python3-venv && apt-get clean

RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python

RUN pip3 --version
RUN pip --version

USER ubuntu
