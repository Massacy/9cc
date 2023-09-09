#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./9cc_mac "$input" > tmp_mac.s
  cc -o tmp_mac tmp_mac.s
  ./tmp_mac
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42

echo OK