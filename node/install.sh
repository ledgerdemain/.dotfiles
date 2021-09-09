#!/bin/bash
#
# nvm: Node Version Manager
#
# This installs nvm


default_nvm_dir="$HOME/.nvm"
nvm_dir="${NVM_DIR:-$default_nvm_dir}"

# Check for nvm
if test ! "$(which nvm)" && ! [[ -e "$nvm_dir" ]]; then
  echo "Installing nvm..."
  git clone https://github.com/nvm-sh/nvm.git "$nvm_dir"
  cd "$nvm_dir"
  git checkout $(git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)) && \. "$nvm_dir/nvm.sh"
fi
