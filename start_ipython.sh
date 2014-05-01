#!/usr/bin/env bash

LD_LIBRARY_PATH=/usr/local/lib ipython notebook --notebook-dir='/root/ecell4/ipynb' --no-browser --ip='*' --port 9999
