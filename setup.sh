#!/bin/sh

mkdir data

wget -c http://mattmahoney.net/dc/enwik9.zip -P data
unzip data/enwik9.zip -d data

perl fastText/wikifil.pl data/enwik9 > data/fil9

mkdir result

./fastText/fasttext skipgram -input data/fil9 -output result/fil9


./fastText/fasttext nn result/fil9.bin
