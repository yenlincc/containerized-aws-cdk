#!/bin/bash
set -x
export PATH="$PATH:$(npm bin)"
cdk --version