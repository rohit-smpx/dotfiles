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
# antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agnoster
# robbyrussell

# Tell Antigen that you're done.
antigen apply

source ~/.config/zsh/custom/*.zsh

alias zshconfig="vim ~/.zshrc"
alias zshcustom="vim ~/.config/zsh/custom/custom.zsh"
alias reloadzsh="source ~/.zshrc"
