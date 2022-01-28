# oh-my-zsh related
ZSH_THEME="robbyrussell"
plugins=(
    git
    macos
    docker
    docker-compose
)
if [[ -e "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]]; then
    plugins=("${plugins[@]}" zsh-syntax-highlighting)
fi
if [[ -e "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions ]]; then
    plugins=("${plugins[@]}" zsh-autosuggestions)
fi

source $ZSH/oh-my-zsh.sh
