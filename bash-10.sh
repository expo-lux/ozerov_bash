#!/usr/bin/env bash
if [[ $# -ne 1 ]]; then
  echo "Usage $0 /path/to/file.txt"
  exit 1
fi
if [[ ! -e $1 ]]; then
  echo "$1 is not exist"
  exit 3
fi
if [[ ! -f $1 ]]; then
  echo "$1 is not regular file"
  exit 2
fi
bytes=$(wc -c $1 | cut -d ' ' -f1)
if [[ $bytes -le 1024 ]]; then
  echo OK
else
  echo FAIL
fi
