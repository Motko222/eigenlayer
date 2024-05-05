#!/bin/bash

# when installed from source
#cd ~/eigenlayer/cli/operator/config/
#eigenlayer operator register operator-config.yaml
#eigenlayer operator status operator-config.yaml

cd ~/eigenlayer
./eigenlayer operator register operator.yaml
./eigenlayer operator status operator.yaml
