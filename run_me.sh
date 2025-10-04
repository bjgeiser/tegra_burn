#!/bin/bash

docker build -t tegra_burn .

docker rm -f gpu_burn 2>/dev/null || true

docker run -d -v $PWD:$PWD -w $PWD --entrypoint /app/script.sh --name gpu_burn --restart unless-stopped --privileged tegra_burn 
#docker run -v $PWD:$PWD -w $PWD -it --entrypoint /bin/bash --name gpu_burn --rm --privileged tegra_burn 

