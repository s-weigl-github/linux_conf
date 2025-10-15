#!/usr/bin/env bash
apt update &&
apt upgrade &&
apt full-upgrade &&
date &&
date +%s &&
tldr --update >> /dev/null &&
echo "updated tldr" &&
mandb >> /dev/null &&
echo "mandb Done!" &&
updatedb &&
echo "Done!"
