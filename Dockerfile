FROM nvidia/cuda:12.2.2-runtime-ubuntu20.04

RUN apt update \
    && apt -y install wget \
    && wget https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz \
    && mkdir t-rex \
    && tar xvzf t-rex-0.26.8-linux.tar.gz -C t-rex \
    && rm t-rex-0.26.8-linux.tar.gz

WORKDIR /t-rex

ENTRYPOINT ["./t-rex"]
