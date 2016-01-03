#!/bin/bash

# get script directory path and move there
cd "${0%/*}"

# create Hiragino otf
chmod +x ./extract-otf-from-ttc_hiragino.pe
./extract-otf-from-ttc_hiragino.pe
chmod -x ./extract-otf-from-ttc_hiragino.pe

if [ $? == 0 ]; then
	killall Terminal
fi