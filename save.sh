#!/usr/bin/env bash
echo "Input theme:"
read theme

rm -rf $theme
mkdir $theme && cd $theme
cp -r $HOME/.config/polybar polybar
cp -r $HOME/.config/alacritty alacritty
cp -r $HOME/.config/bspwm bspwm
cp -r $HOME/.config/sxhkd sxhkd
cp -r $HOME/.config/ranger ranger
cp -r $HOME/.config/zathura zathura
cp -r $HOME/.vimrc .vimrc
cp -r $HOME/.vim .vim
