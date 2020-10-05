#!/bin/bash

lex sort.l

gcc lex.yy.c -o sort -ll
