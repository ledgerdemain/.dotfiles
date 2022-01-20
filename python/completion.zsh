
# enable pipx completion
if test "$(which pipx)"; then
    if ! pip3 list 2&> /dev/null | grep -q argcomplete; then
        pip3 install argcomplete
    fi

    autoload -U bashcompinit
    bashcompinit
    eval "$(register-python-argcomplete pipx)"
fi

# enable pipenv completion
if test "$(which pipenv)"; then
    eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"
fi

# enable pdm completion
# adapted from the kubectl oh-my-zsh plugin https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/kubectl/kubectl.plugin.zsh
if (( $+commands[pdm] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_pdm" ]]; then
    pdm completion zsh >| "$ZSH_CACHE_DIR/completions/_pdm"
    autoload -U "$ZSH_CACHE_DIR/completions/_pdm"
  else
    unfunction _pdm
    autoload -U "$ZSH_CACHE_DIR/completions/_pdm"
    pdm completion zsh >| "$ZSH_CACHE_DIR/completions/_pdm" &|
  fi
fi
