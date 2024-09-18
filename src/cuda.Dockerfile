FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04

WORKDIR /app

RUN apt update -y

RUN apt install ffmpeg -y
RUN apt install espeak-ng -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN apt install git -y

RUN git clone https://github.com/rhasspy/piper.git

WORKDIR /app/piper/src/python/

RUN python3 -m pip install -e .
RUN bash ./build_monotonic_align.sh

RUN python3 -m pip uninstall -y numpy
RUN python3 -m pip install numpy==1.26.4
RUN python3 -m pip install torchmetrics==0.11.4
