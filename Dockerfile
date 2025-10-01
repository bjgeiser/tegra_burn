FROM brightai/deepstream-l4t-reduced:6.3-devel-v2 as builder

WORKDIR /app

COPY . .

RUN apt update && apt install -y git stress-ng && \
    git clone https://github.com/anseeto/jetson-gpu-burn.git && \
    cd jetson-gpu-burn && \
    #cp ../my_changes.patch . && \
    git apply ../my_changes.patch && \
    make && \
    cp gpu_burn /app/gpu_burn && \
    cp compare.ptx /app/compare.ptx

