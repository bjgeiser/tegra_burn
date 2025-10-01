#!/bin/bash

stress-ng --cpu ${nproc} &
./gpu_burn 100000 &
./tegrastats | tee ./tegrastats.log

