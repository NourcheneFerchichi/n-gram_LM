#!/bin/bash

# Test n-gram LM using SRI
# Usage: bash testLM.sh <inputLM> <order> <inputText>
# Example: bash testLM.sh outputLM/4-gram.arpa 4 data/testLM.txt

if [ $# -ne 3 ]; then
  echo "Usage: bash testLM.sh <inputLM> <order> <inputText>"
  exit 1
fi

inputLM=$1; shift
lmOrder=$1; shift
inputText=$1; shift

./srilm-1.7.3/bin/i686-m64/ngram -lm $inputLM -order $lmOrder -ppl $inputText -debug 2
exit 0