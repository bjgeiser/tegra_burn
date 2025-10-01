#!/bin/bash

output_dir=$PWD

cd /app

stress-ng --cpu 4 &
./gpu_burn 100000 &
./tegrastats | tee $output_dir/tegrastats.log

