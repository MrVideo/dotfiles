#!/bin/zsh

pandoc "$1" --pdf-engine=xelatex -V geometry:"margin=2cm" -V papersize=a4 -V monofont="JetBrainsMono-Regular" -o "$2"
