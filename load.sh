#!/usr/bin/env bash
echo "Input theme to load: "
read theme

echo "Loading " $theme " theme..."
cd $theme
cp -rf $theme/bspwm $HOME/.config/bspwm
cp -rf $theme/sxhkd $HOME/.config/sxhkd
cp -rf $theme/ranger $HOME/.config/ranger
cp -rf $theme/alacritty $HOME/.config/alacritty
cp -rf $theme/zathura $HOME/.config/zathura
cp -rf $theme/polybar $HOME/.config/polybar
cp ../.vimrc $HOME/.vimrc
