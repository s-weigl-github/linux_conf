#!/usr/bin/env bash
#
# little script to clean the history file
#
# file to clean
file=~/.bash_history
#$file=hist29032025.txt
#
sed -i '/cl/d' $file
sed -i '/updatedb/d' $file
sed -i '/mandb/d' $file
sed -i '/time/d' $file
sed -i '/ls/d' $file
sed -i '/nproc/d' $file
