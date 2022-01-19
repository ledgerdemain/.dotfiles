
# enable kubectl completion
# copied from the kubectl oh-my-zsh plugin https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/kubectl/kubectl.plugin.zsh
if (( $+commands[kubectl] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_kubectl" ]]; then
    kubectl completion zsh >| "$ZSH_CACHE_DIR/completions/_kubectl"
    source "$ZSH_CACHE_DIR/completions/_kubectl"
  else
    source "$ZSH_CACHE_DIR/completions/_kubectl"
    kubectl completion zsh >| "$ZSH_CACHE_DIR/completions/_kubectl" &|
  fi
fi
