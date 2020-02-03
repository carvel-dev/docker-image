#!/bin/bash

set -e

kbld -f <(ytt -f config/ --data-value-yaml push_images=true) > published.yml

cat published.yml

echo SUCCESS
