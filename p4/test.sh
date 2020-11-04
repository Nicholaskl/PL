#!/bin/bash

make

echo "[3,2,5,4,1]" | ./SortList | diff sort_ans.txt - 
echo "  Test Done: if no print above this, test worked"

make clean
