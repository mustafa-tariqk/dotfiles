set -o vi

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias vim=nvim
pplx() { open -a Safari "https://www.perplexity.ai/search?q=$*" }
google() { open -a Safari "https://www.google.com/search?q=$*" }

starship preset gruvbox-rainbow -o ~/.config/starship.toml
