#!/bin/sh
set -euxo pipefail
export PATH="$PATH:$(npm bin)"
cdk --version
/bin/sh