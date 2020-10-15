#!/bin/bash

a68g fizzbuzz.a68 | diff fizzbuzz_ans.txt -

echo "  Test done: if there is other output, the test failed"
