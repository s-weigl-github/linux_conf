#!/bin/bash
apt update &&
apt upgrade &&
apt full-upgrade &&
date &&
date +%s &&
tldr --update &&
echo "updated tldr"
mandb >> /dev/null &&
echo "mandb done!"
updatedb &&
echo "Done!"
