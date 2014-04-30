#!/usr/bin/env bash

LD_LIBRARY_PATH=/usr/local/lib ipython notebook --notebook-dir='/vagrant' --no-browser --ip='*' --port 9999
