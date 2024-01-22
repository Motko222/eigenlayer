#!/bin/bash

cd ~/eigenlayer/cli/operator/config/
if [ -z operator-config.yaml ] 
then
 cp ~/scripts/eigenlayer/config/operator-config.yaml.sample operator-config.yaml
fi
nano operator-config.yaml
