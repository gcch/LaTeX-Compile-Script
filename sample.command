#!/bin/bash

# TeX Compile Script for Mac OS X
# Copyright (c) 2013-2015 tag.

# move to the directory including this script
cd "${0%/*}"

# replace (BSD sed)
LANG=ja_JP.SJIS
find . -name '*.tex' -exec sed -i "" -e 's/、/，/g' -e 's/。/．/g' {} +
LANG=ja_JP.UTF-8

# get filename with extension of this script
FNAME_WITH_EXT="${0##*/}"
# get filename of this script
FNAME="${FNAME_WITH_EXT%.*}"

# TeX environment
TEX2DVI=platex
DVI2PDF=dvipdfmx
CCODE=sjis
FMAP=font_hiragino.map

# delete AUX file
rm "${FNAME}.aux"

# TeX -> DVI
${TEX2DVI} -kanji=${CCODE} "${FNAME}.tex"
${TEX2DVI} -kanji=${CCODE} "${FNAME}.tex"
#${TEX2DVI} -kanji=${CCODE} "${FNAME}.tex"

# DVI -> PDF
#${DVI2PDF} "${FNAME}.dvi"
${DVI2PDF} -f "${FMAP}" "${FNAME}.dvi"

# pause if error occured
if [ $? == 0 ]; then
	killall Terminal
fi