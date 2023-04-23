#!/bin/bash

git push
if [ -z "$1" ]
then
  echo "Please enter a keymap directory name, no quotes after the ./runner.sh" 
else
  rm -rf /mnt/c/Users/Gregory/qmk_firmware/keyboards/lily58/keymaps/$1
  cp -r ./keyboards/lily58/$1 /mnt/c/Users/Gregory/qmk_firmware/keyboards/lily58/keymaps/$1
fi
