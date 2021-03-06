#!/bin/bash

echo "TBS drivers set for x86 Linux 2.6.x"

./v4l/tbs-x86.sh

echo "TBS drivers building..."
make

echo "TBS drivers installing..."
sudo rm -r -f /lib/modules/$(uname -r)/kernel/drivers/media
sudo make install

echo "TBS drivers installation done"
echo "You need to reboot..."
