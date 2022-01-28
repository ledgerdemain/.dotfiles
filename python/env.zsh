#!/bin/bash

if (( $+commands[pyenv] )); then
  # Configure the shell environment for pyenv
  eval "$(pyenv init - --no-rehash zsh)"
fi

if (( $+commands[pdm] )); then
  # make the Python interpreters aware of PEP 582 packages
  source =(pdm --pep582=zsh)
fi
