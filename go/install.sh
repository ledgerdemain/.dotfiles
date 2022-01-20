#!/bin/bash
#
# goenv
#
# This installs goenv if it's not installed

default_goenv_root="$HOME/.goenv"
goenv_root_dir="${GOENV_ROOT:-$default_goenv_root}"

# Check for goenv
if test ! "$(which goenv)" && ! [[ -e "$goenv_root_dir" ]]; then
  echo "Installing goenv for you."
  git clone https://github.com/syndbg/goenv.git ~/.goenv
  eval "$(goenv init -)"
  export GOENV_ROOT="$HOME/.goenv"
  export PATH="$GOENV_ROOT/bin:$PATH"
  if ! goenv versions | grep -q "1.16.0"; then
    echo "Installing go 1.16.0 for you"
    goenv install 1.16.0
    echo "Making it the default global version"
    goenv global 1.16.0
  fi
fi

exit 0
