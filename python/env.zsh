#!/bin/bash

if test "$(which pyenv)"; then
  # Configure the shell environment for pyenv
  eval "$(pyenv init - --no-rehash zsh)"
fi
