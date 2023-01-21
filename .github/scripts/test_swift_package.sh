#!/bin/bash

set -eo pipefail

cd CICDtesting-package; swift test --parallel; cd ..
