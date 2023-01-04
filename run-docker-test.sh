#!/bin/sh
set -e -u

docker build --tag aoc-python .
docker run -v "$PWD:/src/" aoc-python

