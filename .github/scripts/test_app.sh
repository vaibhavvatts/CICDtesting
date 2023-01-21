#!/bin/bash

set -eo pipefail

xcodebuild -workspace CICDtesting.xcodeproj \
            -scheme CICDtesting\ iOS \
            -destination platform=iOS\ Simulator,OS=16.2,name=iPhone\ 11 \
            clean test | xcpretty
