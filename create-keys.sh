#!/bin/bash

read -p "name? " name

cd ~/eigenlayer
./eigenlayer operator keys create --key-type ecdsa $name
./eigenlayer operator keys create --key-type bls $name
./eigenlayer operator keys list
