#!/bin/sh
if [ -f /mnt/base-us/alpine.ext3 ]; then
    echo "Existing Alpine install detected, cleaning up..."

    rm -f /mnt/base-us/alpine.ext3
    rm -f /mnt/base-us/alpine.sh
    rm -f /mnt/base-us/alpine.log
    rm -f /mnt/base-us/alpine.conf
    rm -f /mnt/base-us/alpine.zip
    mntroot rw
    rm -f /etc/upstart/alpine.conf
    mntroot ro

    echo "Cleanup complete."
fi
cd /mnt/base-us/
echo "Download starting, this may take a minute"
curl -L -o "alpine.zip" "$ALPINE_URL"
unzip alpine.zip
rm alpine.zip
mntroot rw
cp /mnt/base-us/alpine.conf /etc/upstart/alpine.conf
mntroot ro