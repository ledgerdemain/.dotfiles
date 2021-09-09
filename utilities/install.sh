#!/bin/bash
#
# if not previously installed this script will install
# - direnv
# - google cloud sdk (gcloud gsutil bq)


if ! $(brew list | grep -q "direnv"); then
    echo "Installing direnv"
    brew install direnv
fi


default_google_cloud_sdk_root="$HOME/google-cloud-sdk"

# Check for gcloud installation 
if test ! "$(which gcloud)" && ! [[ -e "$default_google_cloud_sdk_root" ]]; then
  echo "Installing google cloud sdk for you."
  curl https://sdk.cloud.google.com > install_google_cloud_sdk.sh
  bash install_google_cloud_sdk.sh --disable-prompts
  rm install_google_cloud_sdk.sh
fi
