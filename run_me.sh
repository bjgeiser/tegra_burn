#!/bin/bash

docker build -t tegra_burn .

docker run -v $PWD:$PWD -w $PWD --entrypoint /app/script.sh --name gpu_burn --rm --privileged tegra_burn 
#docker run -v $PWD:$PWD -w $PWD -it --entrypoint /bin/bash --name gpu_burn --rm --privileged tegra_burn 

