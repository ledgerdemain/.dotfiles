#!/bin/bash


export ZSH="$HOME/.oh-my-zsh"

if ! [[ -e "$HOME"/.oh-my-zsh ]]; then
    echo "Installing oh-my-zsh"
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh

    plugins=(git osx)

    if ! [[ -e ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]]; then
        echo "Installing zsh-syntax-highlighting"
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting
        plugins=("${plugins[@]}" zsh-syntax-highlighting)
    fi

    if ! [[ -e ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]]; then
        echo "Installing zsh-autosuggestions"
        git clone https://github.com/zsh-users/zsh-autosuggestions.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
        plugins=("${plugins[@]}" zsh-autosuggestions)
    fi

    export ZSH_THEME="robbyrussell"
    source "$ZSH"/oh-my-zsh.sh
fi
