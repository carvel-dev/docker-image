#!/bin/bash

set -e

kbld -f <(ytt -f config/)

echo SUCCESS
