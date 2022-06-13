#!/bin/zsh

pandoc "$1" --pdf-engine=xelatex -V geometry:a4paper -V margin:2cm -V monofont="FiraCode-Regular" -o "$2"
