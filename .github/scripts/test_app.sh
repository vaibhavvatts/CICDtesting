#!/bin/bash

set -eo pipefail

xcodebuild -workspace CICDtesting.xcworkspace \
            -scheme CICDtesting\ iOS \
            -destination platform=iOS\ Simulator,OS=13.3,name=iPhone\ 11 \
            clean test | xcpretty
