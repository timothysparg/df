#! /usr/bin/env bash

if ! kubectl krew; 
then
    (
        set -x; cd "$(mktemp -d)" &&
        OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
        ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
        KREW="krew-${OS}_${ARCH}" &&
        curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
        tar zxvf "${KREW}.tar.gz" &&
        ./"${KREW}" install krew
    )
    grep -qxF 'export PATH="${PATH}:${HOME}/.krew/bin"' ~/.zshrc || echo 'export PATH="${PATH}:${HOME}/.krew/bin"' >> ~/.zshrc
else
    "krew is already installed"    
fi

#to install plugins use the following syntax
# PATH="${PATH}:${HOME}/.krew/bin" kubectl krew install <plugin>