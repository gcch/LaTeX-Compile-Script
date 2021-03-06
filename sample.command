#!/bin/bash

# TeX Compile Script for Mac OS X
# Copyright (c) 2013-2015 tag.

# move to the directory including this script
cd "${0%/*}"

# replace (BSD sed)
LANG=ja_JP.SJIS
find . -name '*.tex' -exec sed -i "" -e 's/A/C/g' -e 's/B/D/g' {} +
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

# delete temp files
#rm "${FNAME}.aux" "${FNAME}.dvi" "${FNAME}.out" "${FNAME}.log" "${FNAME}.toc" "${FNAME}.lof" "${FNAME}.lot"

# TeX -> DVI
${TEX2DVI} -kanji=${CCODE} "${FNAME}.tex"
${TEX2DVI} -kanji=${CCODE} "${FNAME}.tex"
#${TEX2DVI} -kanji=${CCODE} "${FNAME}.tex"

# DVI -> PDF
#${DVI2PDF} "${FNAME}.dvi"
${DVI2PDF} -f "${FMAP}" "${FNAME}.dvi"

# pause if error occured
RET=$?
if [ ! ${RET} -eq 0 ]; then
	read
fi

# delete temp files
rm "${FNAME}.aux" "${FNAME}.dvi" "${FNAME}.out" "${FNAME}.log" "${FNAME}.toc" "${FNAME}.lof" "${FNAME}.lot"

killall Terminal
