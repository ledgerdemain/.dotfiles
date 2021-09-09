# oh-my-zsh related
ZSH_THEME="robbyrussell"
plugins=(
    git
    osx
    zsh-syntax-highlighting
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# direnv
eval "$(direnv hook zsh)"
