#!/bin/bash
#
# asdf-python
# pipx
# pipenv
# pdm
#
# installs asdf-python and some of the most popular python versions
# installs pipx and pipenv and pdm

# Check for asdf
if "$(which asdf)"; then
    echo "asdf found"
    if ! asdf plugin-list | grep -q "python"; then
        echo "Installing asdf-python plugin for you"
        asdf plugin-add python
        if ! asdf list python | grep -q "3.11"; then
            echo "Installing python version 3.11 and setting it to global"
            default_version="3.11.0"
            python_version=$(asdf list all python | grep "3.11" | tr -d " " | grep -v "[a-zA-Z]" | tail -n 1)
            version_to_install="${python_version:-$default_version}"
            echo "Installing python version $version_to_install"
            asdf install python "$version_to_install"
            echo "Setting global python version to $version_to_install"
            asdf global python "$version_to_install"
        fi
    else
        echo "asdf-python plugin already installed"
    fi
fi


# Check for pipx
if test ! "$(which pipx)"; then
    if test "$(which brew)"; then
        echo "Installing pipx for you."
        brew install pipx
        pipx ensurepath
    else
        echo "brew is not installed - skipping installation of pipx"
    fi
fi


# Check for pipenv
if test ! "$(which pipenv)"; then
    if test "$(which pipx)"; then
        echo "Installing pipenv for you."
        pipx install pipenv
    else
        echo "pipx is not installed - skipping installation of pipenv"
    fi
fi


# Check for pdm
if test ! "$(which pdm)"; then
    if test "$(which brew)"; then
        echo "Installing pdm for you"
        brew install pdm
    else
        echo "brew is not installed - skipping installation of pdm"
    fi
fi


exit 0
