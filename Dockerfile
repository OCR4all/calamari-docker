FROM nvidia/cuda:12.3.1-runtime-ubuntu22.04

ARG CALAMARI_URL=https://github.com/Calamari-OCR/calamari/archive/master.zip

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y build-essential
RUN apt-get install -y python3-pip python3-setuptools python3-wheel python3.7-distutils python3.7
RUN apt-get clean

RUN python3.7 -m pip --no-cache-dir install --upgrade pip
RUN python3.7 -m pip --no-cache-dir install ${CALAMARI_URL}
RUN apt-get purge -y --auto-remove build-essential
RUN rm -rf /var/lib/apt/lists/*