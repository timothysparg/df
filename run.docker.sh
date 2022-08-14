#!/usr/bin/env bash

docker run --rm --network=host -it -v $PWD:/workspace -w /workspace $(docker build -q .)