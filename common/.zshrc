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

antigen bundle $HOME/.config/zsh/base --no-local-clone
antigen bundle $HOME/.config/zsh/custom --no-local-clone

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

