#!/bin/bash
# Script for building on CoderMerlin
set -eu

# Some limits will need to be increased in order to successfully build:
# * open files - execute: `ulimit -n 8192`
# * user processes - execute: `ulimit -u 256`
ulimit -n 8192
ulimit -u 256

# Build
npm install
