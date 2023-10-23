HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt beep extendedglob nomatch
bindkey -e

export VISUAL=nvim;
export EDITOR=nvim;

alias ls="lsd -l"
alias update="source ~/.zshrc"

# No duplicate history
setopt appendhistory
setopt hist_ignore_all_dups hist_save_no_dups hist_find_no_dups

# compinstall case insensitive completion
zstyle :compinstall filename '/home/marc/.zshrc'
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Add highlighting to terminal commands
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
