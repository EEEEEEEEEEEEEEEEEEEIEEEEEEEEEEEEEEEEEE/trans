#!/bin/sh

if [[ $# -ne 1 ]]; then
    echo "Usage : "
    echo "        trans [WORD]"
    exit 1
fi

WORD=$1
curl -s http://dict.cn/${WORD} | grep strong | sed 's/\t//g' | sed 's/<strong>//g' | sed 's!</strong>!!g' | sed 's/<li>//g' | sed 's!</li>!!g'
