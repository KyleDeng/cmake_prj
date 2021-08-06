#!/usr/bin/bash

rm -rf ./output
rm -rf ./install

cmake -B output
cmake --build output
cmake --install output --prefix install
