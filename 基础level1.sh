#!/bin/bash

cd /workspace
ls
ls cabinet
cat cabinet/key.txt
cp -f input.bin input
./exam -e MOON
mv output flag