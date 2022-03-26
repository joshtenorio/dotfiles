#!/usr/bin/env bash

rm -rf common
mkdir common
cd common
cp -rf $HOME/.config/sxhkd sxhkd
cp -rf $HOME/.config/ranger ranger
cp -rf $HOME/.config/zathura zathura
cp -rf $HOME/.vimrc .vimrc

cd ..
