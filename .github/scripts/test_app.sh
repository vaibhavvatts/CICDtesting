#!/bin/bash

set -eo pipefail

xcodebuild -workspace CICDtesting.xcworkspace \
            -scheme CICDtesting \
            -destination platform=iOS\ Simulator,OS=16.2,name=iPhone\ 11 \
            clean test | xcpretty
