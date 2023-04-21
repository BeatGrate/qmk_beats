#!/bin/bash

if [ -z "$1" ]
then
  echo "Please enter a keymap directory name, no quotes after the ./runner.sh" 
else
  rm -rf /mnt/c/users/grego/qmk_firmware/keyboards/lily58/$1
  cp -r ./keyboards/lily58/$1 /mnt/c/users/grego/qmk_firmware_keyboards_lily58/
fi
