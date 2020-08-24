#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Some enviromental variables
GDK_BACKEND=wayland
CLUTTER_BACKEND=wayland

### Exports
export EDITOR=vim
export VISUAL=vim
export VIDEO=mpv
export IMAGE=imv
export OPENER="xdg-open"
export READER=zathura
export GOROOT="/usr/lib/go"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"
export CLICOLOR=1
export TERM=xterm-256color
export TERMINAL=alacritty
export BROWSER=firefox-developer-edition
export PAGER="less"
export WM="sway"
export COLORTERM="truecolor"


### NNN Configuration
export NNN_TRASH=1
export NNN_COLORS='4444'
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_PLUG='m:nmount'

################################################
### StartX
#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#	exec startx
#fi

### Start Wayland
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
################################################


### Aliases
alias ls='exa'
alias l='exa -lahg'
alias grep='grep --color=auto'
alias mv='mv -i'
alias cmatrix='cmatrix -bC blue'
alias tiktak='tty-clock -scC 4'

###

PS1="[\[\e[31m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] \W]\\$ "

### Macros
bind "set completion-ignore-case on"

neofetch
