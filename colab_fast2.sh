#!/bin/bash
if [ ! -e /content/models ]; then
        mkdir -p /root/.torch/models
        mkdir -p /root/.fastai/data
        ln -s /root/.torch/models /content
        ln -s /root/.fastai/data /content
        rm -rf /content/sample_data/
fi

echo Updating fastai...
pip install 'fastai2>=0.0.11'
pip install graphviz
pip install ipywidgets
pip install matplotlib
pip install 'nbdev>=0.2.12'
pip install pandas
pip install scikit_learn
pip install azure-cognitiveservices-search-imagesearch
pip install sentencepiece

echo Done.
