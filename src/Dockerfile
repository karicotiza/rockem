FROM python:3.10.14-bookworm

WORKDIR /app

RUN apt update -y

RUN apt install ffmpeg -y
RUN apt install espeak-ng -y

RUN git clone https://github.com/rhasspy/piper.git

WORKDIR /app/piper/src/python/

RUN python -m pip install -e .
RUN bash ./build_monotonic_align.sh

RUN python -m pip uninstall -y numpy
RUN python -m pip install numpy==1.26.4
RUN python -m pip install torchmetrics==0.11.4
