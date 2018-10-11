export PATH=$HOME/bin:/usr/local/bin:/home/dexter/.local/bin:$PATH
export ZSH="/home/dexter/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=()

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"

eval "$(direnv hook zsh)"

