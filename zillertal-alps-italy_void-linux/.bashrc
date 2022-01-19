# .bashrc

BROWSER=~/Applications/brave.AppImage
DOWNLOAD_KEYSERVER=keys.openpgp.org
PATH=$PATH:~/.cabal/bin:~/Applications:~/.local/bin
LC_ALL=en_US.UTF-8
XDG_RUNTIME_DIR=/run/user/stefano

if [ -z "${DISPLAY}" ]; then
	sx
fi

# utilities
alias ls='ls --color=auto'
alias vi='nvim'
alias xclip='xclip -selection clipboard -r'
alias update='sudo xbps-install -Suy && sudo xbps-remove -Ooy'
alias run='docker start -ai'

PS1='\e[0;34m\W\e[m ✏  '
eval "$(dircolors ~/.config/dir_colors)"

# opam configuration
test -r /home/stefano/.opam/opam-init/init.sh && . /home/stefano/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

