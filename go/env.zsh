#!/bin/bash


if (( $+commands[goenv] )); then
  eval "$(goenv init -)"
fi
