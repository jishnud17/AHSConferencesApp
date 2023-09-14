#!/bin/bash
# Script for building on CoderMerlin
set -eu

# Some limits will need to be increased in order to successfully run:
ulimit -n 8192
ulimit -u 256
ulimit -v 67108864
ulimit -t 1200

# Build
npm start
