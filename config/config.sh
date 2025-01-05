#!/bin/bash

# Config for git
cp -f ./config/.gitconfig ~/.gitconfig

# Config for zsh
chsh -s $(which zsh)
