# all output before p10k
neofetch

# plugin manager
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# plugins
plug "zap-zsh/nvm"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "wintermi/zsh-brew"

# vim mode
bindkey -v
export KEYTIMEOUT=1
bindkey -v '^?' backward-delete-char

# alias
alias ls="exa -s=type"
alias ll="exa -l -s=type"
alias la="exa -l -a -a -s=type"

alias cat=bat
alias e=ranger
alias v=nvim
alias g=lazygit
alias z=zellij

alias grep="grep --color=auto" 
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias watchtest="cargo watch -x test"

# default editor
export EDITOR=nvim

# giving (polite) fucks
eval $(thefuck --alias)
alias noo="fuck"

# languages
# rust
source "$HOME/.cargo/env"
