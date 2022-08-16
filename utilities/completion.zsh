# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# add shell completion for "pack" utility
if test ! "$(which pack)"; then
    . $(pack completion --shell zsh)
else
    echo "did not find 'pack' - skipping adding autocompletion"
fi
