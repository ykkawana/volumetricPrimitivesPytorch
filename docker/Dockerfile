FROM nvidia/cuda:7.5-cudnn4-devel
RUN mkdir /workspace
ARG http_proxy
ARG https_proxy
WORKDIR /workspace
RUN rm /etc/apt/sources.list.d/cuda.list && \
    rm /etc/apt/sources.list.d/nvidia-ml.list
RUN apt update && \
    apt install -y --no-install-recommends \
        software-properties-common 
RUN apt update && \
    add-apt-repository ppa:deadsnakes/ppa
RUN apt update && \
    apt install -y --no-install-recommends \
        git \
        wget \
        curl \
        build-essential \
        vim \
        python3.6 \
        python3.6-dev
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py

## Required for non-glvnd setups.
ENV LD_LIBRARY_PATH /usr/lib/x86_64-linux-gnu:/usr/lib/i386-linux-gnu${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}:/usr/local/nvidia/lib:/usr/local/nvidia/lib64

RUN mkdir temp && cd temp
RUN wget https://download.pytorch.org/whl/cu75/torch-0.1.12.post2-cp36-cp36m-linux_x86_64.whl && \
    pip3 install torch-0.1.12.post2-cp36-cp36m-linux_x86_64.whl
COPY requirements.txt .
RUN pip3 install -r requirements.txt
RUN cd .. && rm -rf temp

#RUN pip install -r requirements.txt
