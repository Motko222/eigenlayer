#!/bin/bash

read -p "This action will replace old binary (if it exists), are you sure? " sure
case $sure in 
 y|Y) ;;
 *) exit 1 ;;
esac

if [ -f ~/eigenlayer/eigenlayer ]; then  rm ~/eigenlayer/eigenlayer; fi
if [ ! -d ~/eigenlayer ]; then  mkdir ~/eigenlayer; fi

curl -sSfL https://raw.githubusercontent.com/layr-labs/eigenlayer-cli/master/scripts/install.sh | sh -s
mv ~/bin/eigenlayer ~/eigenlayer/eigenlayer

echo "Installation done."
