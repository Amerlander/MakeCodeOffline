#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "${DIR}"

cd "pxt/MakeCode"

if lsof -i | grep "node-maco.*localhost.*LISTEN" > /dev/null; then
  #echo A
  open "http://localhost:3232"
else
  #echo B
    ../inc/node-macos ../inc/yarn.js start
fi
exit 0
