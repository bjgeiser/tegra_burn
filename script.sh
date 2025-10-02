#!/bin/bash

output_dir=$PWD
timestamp=$(date +"%Y%m%d_%H%M%S")

cd /app

stress-ng --cpu 4 &
./gpu_burn 100000 &
./tegrastats | tee $output_dir/tegrastats_${timestamp}.log

