#!/bin/bash
#
# if not previously installed this script will install coreutils using brew


if ! $(brew list | grep -q "coreutils"); then
    echo "Installing coreutils"
    brew install coreutils
fi
