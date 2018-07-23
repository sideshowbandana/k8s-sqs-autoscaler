#!/bin/bash

set -ex

apt-get update -y

apt-get install -y --no-install-recommends \
        python-setuptools \
        emacs

rm -rf /var/lib/apt/lists/*
