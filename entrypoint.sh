#!/bin/sh
set -euo pipefail
export PATH="$PATH:$(cd ../ && npm bin)"

while getopts ":ht" opt; do
  case ${opt} in
    h ) # show help message
      printf "Usage: run this container without any argument to enter an interactive shell with AWS CDK pre-installed.\nOther arguments are: [-h] [-t].\nPlease refer to https://github.com/ThinkThenRant/containerized-aws-cdk for more details.\n"
      exit 0
      ;;
    t ) # test the CDK installation
      cdk --version
      exit 0
      ;;
    \? )
      printf "Usage: run this container without any argument to enter an interactive shell with AWS CDK pre-installed.\nPlease refer to https://github.com/ThinkThenRant/containerized-aws-cdk for more details.\n"
      exit 0
      ;;
  esac
done
echo 'Entering an interactive shell with AWS CDK preinstalled. Enjoy!'
/bin/sh