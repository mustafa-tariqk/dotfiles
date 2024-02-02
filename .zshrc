# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias vim=nvim

sdxl() {
    swift run --package-path ~/Pictures/ai/ml-stable-diffusion StableDiffusionSample "$*" --resource-path ~/Pictures/ai/coreml-stable-diffusion-xl-base-with-refiner/compiled --output-path ~/Pictures/ai --compute-units cpuAndGPU --xl
    open ~/Pictures/ai/"$(ls -Art1 ~/Pictures/ai | tail -n 1)"
}

alias bot="ollama run starling-lm"
pplx() { open -a Safari "https://www.perplexity.ai/search?q=$*" }
google() { open -a Safari "https://www.google.com/search?q=$*" }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
