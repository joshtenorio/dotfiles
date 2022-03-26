#!/usr/bin/env bash

rm -rf common
mkdir common
cd common
cp -rf $HOME/.config/sxhkd sxhkd
cp -rf $HOME/.config/ranger ranger
cp -rf $HOME/.config/zathura zathura
cp -r $HOME/.vimrc .vimrc
cp -r $HOME/bin/huion.conf huion.conf

cd ..
