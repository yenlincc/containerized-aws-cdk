#!/bin/sh
set -euxo pipefail
export PATH="$PATH:$(cd ../ && npm bin)"
cdk --version
/bin/sh