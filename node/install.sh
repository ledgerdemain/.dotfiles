#!/bin/bash
#
# asdf nodejs plugin
#
# This installs the asdf nodejs plugin and its required dependencies

if test "$(command -v asdf)"; then
  if test ! "$(asdf plugin-list | grep -q nodejs)"; then
    echo "Installing the asdf nodejs plugin"
    echo "First installing it's required dependencies"
    if test "$(which brew)"; then
      brew install gpg gawk
    else
      echo "brew not installed - couldn't install 'gpg' and 'gawk' deps"
    fi
    asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  fi
else
  echo "asdf not installed - couldn't install asdf nodejs plugin"
fi
