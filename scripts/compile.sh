#!/bin/bash

if npx tsc --pretty > .compile.log 2>&1; then
    echo -e "\x1B[32mCompilation successful.\x1B[0m"
else
    echo -e "\x1B[31mCompilation failed.\x1B[0m"
    tail .compile.log
    exit 1
fi