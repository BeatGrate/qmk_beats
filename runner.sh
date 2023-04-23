#!/bin/bash

# YOU NEED WSLU for the variable below to work
winUserHome=$(wslpath "$(wslvar USERPROFILE)")
git push
if [ -z "$1" ]
then
  echo "Please enter a keymap directory name, no quotes after the ./runner.sh" 
else
  rm -rf $winUserHome/qmk_firmware/keyboards/lily58/keymaps/$1
  cp -r ./keyboards/lily58/$1 $winUserHome/qmk_firmware/keyboards/lily58/keymaps/$1
fi
