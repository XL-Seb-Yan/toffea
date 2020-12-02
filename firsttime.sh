#!/bin/bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p miniconda/
source miniconda/bin/activate
conda create -n toffea python=3.6
conda activate toffea
pip install coffea
conda install -c conda-forge xrootd
conda install -c conda-forge root

pip install --user --editable .

conda install -c conda-forge conda-pack
conda-pack