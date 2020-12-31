alias zshconfig="code ~/.zshrc"
alias zshcustom="code ~/.config/zsh/custom.zsh"
alias zshaliases="code ~/.config/zsh/base/aliases.zsh"
alias zshreload="source ~/.zshrc"

alias gbltd="gb -vv | grep origin | grep gone | awk '{print \$1}';"
alias gbld="gb -vv | grep origin | grep gone | awk '{print \$1}' | xargs -L 1 git branch -d"
alias grpo="gr prune origin"

alias dupwd="du -h -d 1 ./"
