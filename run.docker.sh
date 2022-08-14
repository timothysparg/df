#!/usr/bin/env bash

docker run -it -v $PWD:/workspace -w /workspace $(docker build -q .)