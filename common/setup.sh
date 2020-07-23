#! /bin/zsh
CURRENT_DIR=$(cd $(dirname "$0") && pwd)
CONFIG_DIR=$(readlink  ~/.config)
if [ ! -z $CONFIG_DIR ] && [ -d $CONFIG_DIR ]; then
  echo "ERROR: Config directory, "$CONFIG_DIR", already exists" && exit 1
fi

ZSH_CONFIG_DIR="$CURRENT_DIR/config/zsh"
mkdir -p $ZSH_CONFIG_DIR/custom
curl -L git.io/antigen > $ZSH_CONFIG_DIR/antigen.zsh
ln -sv $CURRENT_DIR/config ~/.config
ln -sv $CURRENT_DIR/.zshrc ~/.zshrc
ln -sv $CURRENT_DIR/.gitconfig ~/.gitconfig