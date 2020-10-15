#!/bin/bash

gst fizzbuzz.st | diff fizzbuzz_ans.txt -

echo "  Test done: if no output, test passed"
