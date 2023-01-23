# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# Enable command line completion for aws cli utility if it's installed
if (( $+commands[aws] )); then
    complete -C "$(which aws_completer)" aws
fi
