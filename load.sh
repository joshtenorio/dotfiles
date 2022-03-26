#!/usr/bin/env bash
echo "Input theme to load: "
read theme

echo "this will overwrite. are you sure? ctrl + c if you dont want to"
read uwu

echo "Loading " $theme " theme..."
cp -rf $theme/bspwm $HOME/.config/
cp -rf $theme/alacritty $HOME/.config
cp -rf $theme/polybar $HOME/.config/
