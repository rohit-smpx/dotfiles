source ~/.config/zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle wd
antigen bundle sudo
antigen bundle history
antigen bundle docker
antigen bundle docker-compose
antigen bundle web-search
antigen bundle command-not-found

# For env versions
# antigen bundle guiferpa/aterminal

antigen bundle arzzen/calc.plugin.zsh

# Syntax highlighting bundle.
antigen bundle zdharma/fast-syntax-highlighting

# ZSH plugin that reminds you to use existing aliases for commands you just typed.
antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle $HOME/.config/zsh/base --no-local-clone
antigen bundle $HOME/.config/zsh/custom --no-local-clone

MACOS_ZSH_FILE=~/.config/zsh/macos.zsh
if [ -f $MACOS_ZSH_FILE ]; then source $MACOS_ZSH_FILE; fi
UBUNTU_ZSH_FILE=~/.config/zsh/ubuntu.zsh
if [ -f $UBUNTU_ZSH_FILE ]; then source $UBUNTU_ZSH_FILE; fi

# Load the theme.
# workaround for https://github.com/zsh-users/antigen/issues/675
THEME=agnoster
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

# Tell Antigen that you're done.
antigen apply

