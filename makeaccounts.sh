#!/bin/bash
name=PogoPlayer/accounts
if [[ -e $name.csv ]] ; then
    mv $name.csv $name$(date +"%Y%m%d%H%M").csv
fi
DEBUG=nightmare xvfb-run --server-args="-screen 0 1024x768x24" node index.js
cd PogoPlayer
xvfb-run --server-args="-screen 0 1024x768x24" node pogo.js
echo "Find the generated accounts in PogoPlayer/accounts.csv"
