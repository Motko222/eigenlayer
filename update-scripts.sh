#!/bin/bash

cd ~/scripts/eigenlayer
git stash push --include-untracked
git pull
chmod +x *.sh
