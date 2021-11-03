# .bashrc

PATH=$PATH:~/.cabal/bin:~/Applications
BROWSER=/home/stefano/Applications/brave.AppImage
LC_ALL=en_US.UTF-8

if [ -z "${DISPLAY}" ]; then
	sx
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='nvim'
alias xclip='xclip -selection clipboard -r'
PS1='\e[0;34m\W\e[m ✏  '
eval "$(dircolors ~/.config/dir_colors)"

# opam configuration
test -r /home/stefano/.opam/opam-init/init.sh && . /home/stefano/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

