#!/bin/bash
#
# kubectl
# minikube
#
# installs kubectl and minikube
ret=0

# Check for kubectl
if test ! "$(which kubectl)"; then
    if test "$(which brew)"; then
        echo "Installing kubectl for you."
        brew install kubectl && ret=$?
    else
        echo "brew is not installed - skipping installation of kubectl"
    fi
fi


# Check for minikube
if test ! "$(which minikube)"; then
    if test "$(which brew)"; then
        echo "Installing minikube for you."
        brew install minikube && ret=$?
    else
        echo "brew is not installed - skipping installation of minikube"
    fi
fi


exit $ret
