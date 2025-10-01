#!/bin/bash

docker build -t tegra_burn .

docker run -v $PWD:$PWD -w $PWD --entrypoint /app/script.sh tegra_burn 

