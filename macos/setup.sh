#! /bin/zsh
set -e
../common/setup.sh
CURRENT_DIR=$(cd $(dirname "$0") && pwd)

mkdir -p ~/.config/zsh/custom/
ln -sv $CURRENT_DIR/config/zsh/macos.zsh ~/.config/zsh/custom/macos.zsh
ln -sv $CURRENT_DIR/config/zsh/iTerm2-ssh.zsh ~/.config/zsh/custom/iTerm2-ssh.zsh
