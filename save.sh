#!/usr/bin/env bash
echo "Input theme to save:"
read theme

echo "saving " $theme " theme..."
rm -rf $theme
mkdir $theme && cd $theme
cp -r $HOME/.config/polybar polybar
cp -r $HOME/.config/alacritty alacritty
cp -r $HOME/.config/bspwm bspwm
