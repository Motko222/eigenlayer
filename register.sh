#!/bin/bash

cd ~/eigenlayer/cli/operator/config/
eigenlayer operator register operator-config.yaml
eigenlayer operator status operator-config.yaml
