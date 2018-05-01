#!/usr/bin/env bash

echo 'y' | conda create -n tensorflow pip python=3.6
source activate tensorflow
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.8.0-cp36-cp36m-linux_x86_64.whl
pip install pandas
git clone https://github.com/tensorflow/models
python models/samples/core/get_started/premade_estimator.py
