#!/usr/bin/env bash
cd $(dirname $0)
killall opera &> /dev/null
rm -fr opera*.datadir &> /dev/null
rm *.log &> /dev/null
