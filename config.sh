#!/bin/bash

if [ -f ~/eigenlayer/cli/operator/config/operator-config.yaml ] 
then
 cp ~/scripts/eigenlayer/config/operator-config.yaml.sample ~/eigenlayer/cli/operator/config/operator-config.yaml
fi
nano ~/eigenlayer/cli/operator/config/operator-config.yaml
