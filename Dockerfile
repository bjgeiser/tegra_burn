FROM brightai/deepstream-l4t-reduced:6.3-devel-v2 as builder

WORKDIR /app

COPY my_changes.patch .
COPY tegrastats .

RUN apt update && apt install -y git && \
    git clone https://github.com/anseeto/jetson-gpu-burn.git && \
    cd jetson-gpu-burn && \
    git apply --stat ../my_changes.patch && \
    make && \
    cp gpu_burn

