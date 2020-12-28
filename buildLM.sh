#!/bin/bash

# Build an n-gram LM using SRI
# Usage: bash buildLM.sh <LMtext> <order> <Vocabulary> <outputLM>
# Example: bash buildLM.sh data/text_lm_file.txt 4 data/vocab.txt outputLM/4-gram.arpa

if [ $# -ne 4 ]; then
  echo "Usage: bash buildLM.sh <LMtext> <order> <Vocabulary> <outputLM>"
  exit 1
fi

inputText=$1; shift
lmOrder=$1; shift
inputVocab=$1; shift
outputLM=$1; shift


# grep -v ^# $inputLexicon | awk '{print $1}' > wordList$$
./srilm-1.7.3/bin/i686-m64/ngram-count -vocab $inputVocab -order $lmOrder -prune 0.000000008 -text $inputText -lm $outputLM -addsmooth 0
exit 0