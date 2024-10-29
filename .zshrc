export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="myd"


export LANG=pt_BR.UTF-8
export LC_ALL=pt_BR.UTF-8


export PATH=$HOME/bin:$PATH

plugins=(git)

source $ZSH/oh-my-zsh.sh


## APELIDOS SCRIPTS ##
alias tgit="cat /home/knx/.token.txt"

## APELIDOS-APPs ##
alias vim="nvim"
alias py="python3"
alias hour="tty-clock -c "
alias opdf="zathura"
alias spt="spotify-tui"


## APELIDOS-XBPS##
#
alias xbi="sudo xbps-install" #insatlar pacotes
alias xbr="sudo xbps-remove" #remove pacotes
alias xq="xbps-query" #apelido xbps-query
alias xc="sudo xbps-reconfigure" #apelido para xbps-reconfigure
alias att="sudo xbps-install -Suv && sudo xbps-remove -ROo"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

if command -v zoxide > /dev/null; then
  eval "$(zoxide init zsh)"
fi

export QSYS_ROOTDIR="/home/knx/intelFPGA_lite/23.1std/quartus/sopc_builder/bin"
