export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="myd"

export PATH=$HOME/bin:$PATH

plugins=(git)

source $ZSH/oh-my-zsh.sh


## APELIDOS SCRIPTS ##
alias br="py /home/knx/.scripts/brilho.py"
alias tgit="cat /home/knx/.token.txt"

## APELIDOS-APPs ##
alias vim="nvim"
alias py="python3"
alias hour="tty-clock -c | lolcat"
alias btop="bpytop"
alias opdf="zathura"

## APELIDOS-XBPS##
#
alias xbi="doas xbps-install" #insatlar pacotes
alias xbr="doas xbps-remove" #remove pacotes
alias xq="doas xbps-query" #apelido xbps-query
alias xc="doas xbps-reconfigure" #apelido para xbps-reconfigure
alias att="doas xbps-install -Suv || xbps-remove -Oo"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash


export PATH="$HOME/.poetry/bin:$PATH"
