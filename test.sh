#!/bin/bash

try() {
    expected="$1"
    input="$2"

    ./h0cc "$input" > tmp.s
    gcc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" != "$expected" ]; then
        echo "$input expected, but got $actual"
        exit 1
    fi
}

try 0 0
try 42 42


echo OK

