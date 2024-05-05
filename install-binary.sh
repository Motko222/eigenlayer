#!/bin/bash

read -p "This action will replace old binary, are you sure? " sure
case $sure in 
 y|Y) ;;
 *) exit 1 ;;
esac

rm ~/eigenlayer/eigenlayer
curl -sSfL https://raw.githubusercontent.com/layr-labs/eigenlayer-cli/master/scripts/install.sh | sh -s
mv ~/bin/eigenlayer ~/eigenlayer

echo "Installation done."
