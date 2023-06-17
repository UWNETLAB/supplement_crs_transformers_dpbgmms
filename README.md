# Transformer model contextual word embeddings and clustering

Python code and environment files to reproduce the process used for the paper *A new method for computational cultural cartography: From neural word embeddings to transformers and Bayesian mixture models*: 


The *crs_corpus* directory contains a 2% sample of the JSTOR corpus used in the paper, for each decade of publication. This sample size is both for JSTOR terms of use, and to fall within the github 100mb individual file limit.

**NOTE** this repository is not a software release so is intended for reproduction of the process only. Very limited support is available (ie. only fixes for bugs that we can reproduce with the data sample provided). The pipeline should work with any text corpus but *considerable* adaptation would be needed for many of the steps. Similarly, *distilbert* fine-tuning was performed with a GPU (py. That code may be adaptable for CPU but the processing time for even the 2% sample would increase substantially.

It should also be possible to do a near-reproduction of the full paper results by making a request to JSTOR using the following parameters:

```
JSTOR Data for Research Search URL https://www.jstor.org/dfr/results?searchType=facetSearch&sd=1900&ed=&Query=democracy+OR+democr*+OR+autocracy+OR+autocr*+OR+authoritarianism+OR+authoritar*+OR+populism+OR+populis*&acc=dfr

OCR Full Text: Yes

Limit to these publication dates: 1900 to July 7th, 2020
```

The pipeline expects text files with one sentence per line and lowercase English alphabet characters only.


# Processing environment

```
Ubuntu 20.04
Python 3.9

Dell Precision T7600 Workstation
2x Intel Xeon E5-2690
256GB DDR3 ECC RAM
2TB XPG SX8200 Pro NVMe M.2 SSD
GeForce RTX 2070 SUPER
```

# Python environment setup

On Linux, use conda or mamba to install an exact duplicate environment from *env_linux-64.txt*. Replace "crs_netlab_2022" with any environment name. Confirmed working on Ubuntu 20.04 as of June 16, 2023.

```
mamba create --name crs_netlab_2022 --file env_linux-64.txt
```

An environment YAML file is also provided, which may or may not work on Windows or OSX. Tested only on Ubuntu 20.04.

```
mamba env create -f env_platform_independent_untested.yml
```

Two additional external scripts are included to ensure their availability. The first is slightly modified for compatibility with Tensorflow 2.

dpgmm_vi.py from https://github.com/mcusi/tf_dpgmm/tree/master/diagonal

run_mlm.py from https://github.com/huggingface/transformers/blob/main/examples/pytorch/language-modeling/run_mlm.py

# Steps to reproduce data pipeline

1. Clone entire repository
2. Execute *crs_finetune_all_models.sh*
3. Follow IPython Notebooks 1-4 in their numbered order. Unfortunately, there is not a great deal of code comments in these to help with adaptation.
4. Notebook 5 uses some included results data from the full corpus - it would not execute otherwise
