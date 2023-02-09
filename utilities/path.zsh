# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi


# set default AWS profile if aws cli is installed and 'development' profile is found
if (( $+commands[aws] )); then
    if $(aws configure list-profiles | grep -q "development"); then
        export AWS_PROFILE=development
    fi
fi
