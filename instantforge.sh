#!/bin/sh
# Name: InstantForge
# Author: GC777
# DontUseFBInk
cd /mnt/us/documents/
curl -L -o "KindleForge.zip" "https://github.com/KindleTweaks/KindleForge/releases/latest/download/KindleForge.zip"
unzip KindleForge.zip
rm KindleForge.zip
./KindleForge.sh
rm /mnt/us/documents/instantforge.sh