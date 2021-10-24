# .bashrc

PATH=$PATH:~/Applications:/opt/Discord
BROWSER=/home/stefano/Applications/brave.AppImage

if [ -z "${DISPLAY}" ]; then
	sx
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='nvim'
PS1='[\u@\h \W]\$ '
eval "$(dircolors ~/.config/dir_colors)"
