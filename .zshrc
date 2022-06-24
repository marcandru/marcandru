# Runs macchina at start
start_macchina() {
	if [ "$(pacman -Q | awk '/macchina/ {print }'|wc -l)" -ge 1 ]; then
  		macchina -t Beryllium 
	fi
}
start_macchina

# Configuring PROMPT and PS1
# PROMPT='%n: '

# No duplicate history when reverse-searching my commands
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Case insensitive completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Vim Keybinding (or Emacs)
bindkey -v
#bindkey -e

# General Aliases
# Open .zshrc to be editor in Vim
alias change="vim ~/.zshrc"
# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"
# Clear terminal
alias clear='clear; start_macchina'
# For listing
alias ls='ls --color=auto'
alias ll='ls --color=auto -lav --ignore=..'
alias l='ls --color=auto -lav --ignore=.?*'
#-------
#Python
#-------
alias python="/usr/local/bin/python3"
#------------------
# Miscellaneous
#------------------

# Add colors to terminal commands (green command means that the command is valid)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Powerlevel 10k theming
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
