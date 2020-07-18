# !/usr/bin/sh
CURRENT_DIR=$(pwd)
ZSH_CONFIG_DIR="$CURRENT_DIR/config/zsh"
mkdir -p ZSH_CONFIG_DIR
curl -L git.io/antigen > $ZSH_CONFIG_DIR/antigen.zsh
ln -sv $CURRENT_DIR/config ~/.config
ln -sv $CURRENT_DIR/.zshrc ~/.zshrc
ln -sv $CURRENT_DIR/.gitconfig ~/.gitconfig