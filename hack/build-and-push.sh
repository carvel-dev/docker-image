#!/bin/bash

set -e

# Capture entire output first to avoid having dirty status on kbld metadata
contents=$(set -e; kbld -f <(ytt -f config/ --data-value-yaml push_images=true))

echo "${contents}" > published.yml
cat published.yml

echo SUCCESS
