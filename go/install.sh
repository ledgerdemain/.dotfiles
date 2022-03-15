#!/bin/bash
#
# asdf golang plugin
#
# This installs the asdf golang plugin and its required dependencies

if test "$(command -v asdf)"; then
  if test ! "$(asdf plugin-list | grep -q golang)"; then
    echo "Installing the asdf golang plugin"
    echo "First installing it's required dependencies"
    if test "$(which brew)"; then
      if test "$(brew list | grep -q coreutils)"; then
        echo "'coreutils' dependency already installed"
      else
        brew install coreutils
      fi
    else
      echo "brew not installed - couldn't install 'coreutils' dependency"
    fi
    asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
  fi
else
  echo "asdf not installed - couldn't install asdf golang plugin"
fi
