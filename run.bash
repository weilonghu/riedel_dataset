#!/bin/bash

cd src/java
bash convert.bash 1

cd ../python
bash convert.bash 1

cd ../java
bash convert.bash 0

cd ../../
cat ./data/heldout_relations/trainPositive.tsv >> ./data/train1.txt
cat ./data/heldout_relations/trainNegative.tsv >> ./data/train1.txt
cat ./data/heldout_relations/testPositive.tsv >> ./data/test.txt
cat ./data/heldout_relations/testNegative.tsv >> ./data/test.txt

cat ./data/kb_manual/trainPositive.tsv >> ./data/train1.txt
cat ./data/kb_manual/trainNegative.tsv >> ./data/train1.txt

cd src/python
bash convert.bash 0
python generate_train.py

rm ../../data/train1.txt