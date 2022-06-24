# ~/.bashrc

# Runs macchina at start
start_macchina() {
	if [ "$(pacman -Q | awk '/macchina/ {print }'|wc -l)" -ge 1 ]; then
  		macchina -t Beryllium 
	fi
}
start_macchina

# Sets PS1 to marc: /relative_path
PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\u\[`tput sgr0`\]: $PWD\n\$ '

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias clear='clear; start_macchina'
[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
bind -x '"\C-l":clear;'
