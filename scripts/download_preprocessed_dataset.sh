#!/bin/bash

# Link:
# https://www.dropbox.com/sh/8fabn61kjw5z39x/AABMg1BXZ-mR8_PDEfApa5Z3a?dl=0
mkdir -p cachedir
wget -O cachedir/shapenet.tar.gz https://www.dropbox.com/sh/8fabn61kjw5z39x/AADnjIQgd4TltAaQtI6Iw9Nua/shapenet.tar.gz
pushd cachedir
    tar xvf shapenet.tar.gz
popd
