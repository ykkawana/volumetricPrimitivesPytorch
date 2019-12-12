#!/bin/bash

pushd docker
docker-compose up
docker-compose down
popd
