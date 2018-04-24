#!/bin/bash

cd src/java
bash convert.bash 1

cd ../python
bash convert.bash 1

cd ../java
bash convert.bash 0

cd ../../
cat ./data/heldout_relations/trainPositive.tsv >> ./data/train.txt
cat ./data/heldout_relations/trainNegative.tsv >> ./data/train.txt
cat ./data/heldout_relations/testPositive.tsv >> ./data/test.txt
cat ./data/heldout_relations/testNegative.tsv >> ./data/test.txt

cat ./data/kb_manual/trainPositive.tsv >> ./data/train.txt
cat ./data/kb_manual/trainNegative.tsv >> ./data/train.txt

cd src/python
bash convert.bash 0