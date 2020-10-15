#!/bin/bash

f77 fizzbuzz.f
./a.out | diff fizzbuzz_ans.txt -

echo "  Test done: if there is other output, the test failed"

rm a.out
