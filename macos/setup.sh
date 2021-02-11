#! /bin/zsh
set -e
../common/setup.sh
CURRENT_DIR=$(cd $(dirname "$0") && pwd)

mkdir -p ~/.config/zsh/custom/
ln -sv $CURRENT_DIR/config/zsh/macos.zsh ~/.config/zsh/custom/macos.zsh
ln -sv $CURRENT_DIR/config/zsh/iTerm2-ssh.zsh ~/.config/zsh/custom/iTerm2-ssh.zsh

# Mac Specific Overrides

# Show hidden files
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder

# Disable spaces rearranging
# SEE: https://www.defaults-write.com/disable-automatically-rearrange-spaces-based-on-recent-use/
defaults write com.apple.dock mru-spaces -bool false
