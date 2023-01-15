#!/bin/bash

if (( $+commands[pdm] )); then
  # make the Python interpreters aware of PEP 582 packages
  source =(pdm --pep582=zsh)
fi
