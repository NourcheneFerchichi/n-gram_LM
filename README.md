# n-gram_LM

This repos will help you create your own n-gram Language Model using the [SRILM](http://www.speech.sri.com/projects/srilm/) toolkit. Here we choose
to work with the Buckwalter language, but the same principle applies for any other chosen language.

--------------------------------------------------------------------------------
## Installation
Start with installing the following dependencies:
- [conda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html)
- python 3.7
- [SRILM](https://okapiframework.org/wiki/index.php/SRILM_Installation_and_Running_Tutorial)

Run the following command lines to clone the GitHub repository and start working with it:
```bash
conda --version

# Clone the repo
git clone https://github.com/NourcheneFerchichi/n-gram_LM.git
cd n-gram_LM
```

--------------------------------------------------------------------------------
## Usage
To train an n-gram LM using SRI, use the following command line:
```bash
bash buildLM.sh <LMtext> <order> <Vocabulary> <outputLM>
```
* Example: 
```bash
bash buildLM.sh data/trainLM.txt 4 data/vocab.txt outputLM/4-gram.arpa
```

To test your pre-trained n-gram LM using SRI, use the following command line:
```bash
bash testLM.sh <inputLM> <order> <inputText>
```
* Example: 
```bash
bash testLM.sh outputLM/4-gram.arpa 4 data/testLM.txt
```
