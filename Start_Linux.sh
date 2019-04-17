#!/bin/bash
cd pxt/MakeCode

if netstat -l | grep "tcp.*3232.*0.0.0.0" > /dev/null; then
    xdg-open "http://localhost:3232"
else 
    cd pxt/MakeCode
    ../inc/node-linux ../inc/yarn.js start
fi
exit 0