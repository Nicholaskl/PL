#!/bin/bash

make

echo "[4,2,3,1]" | ./SortList | diff sort_ans.txt - 
echo "  Test Done: if no print above this, test worked"

make clean
