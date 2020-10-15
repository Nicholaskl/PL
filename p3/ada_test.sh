#!/bin/bash

gnatmake bubblesort.adb

./bubblesort | diff bubblesort_ans.txt -

echo "  Test done: if no other output, test passed"

rm bubblesort
rm bubblesort.ali
rm bubblesort.o
