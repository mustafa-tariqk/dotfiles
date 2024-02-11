set -o vi

eval "$(/opt/homebrew/bin/brew shellenv)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias vim=nvim
pplx() { open -a Safari "https://www.perplexity.ai/search?q=$*" }
google() { open -a Safari "https://www.google.com/search?q=$*" }

eval "$(starship init zsh)"
