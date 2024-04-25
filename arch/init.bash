#!/bin/bash

ask_question() {
    local question="$1"
    
    # Imprimir a pergunta
    echo "$question (y/n)"
    
    # Ler a resposta do usuário
    read response
    
    # Verificar se a resposta é "y"
    [ "$response" = "y" ]
}


if ask_question "install yay ?"; then
    bash ./installs/yay-install.bash
fi

if ask_question "install docker ?"; then
    bash ./installs/docker-install.bash
fi

if ask_question "install gnome fractional scaling for x11 ?"; then
    bash ./installs/gnome/x11-fractional-scaling-install.bash
fi

if ask_question "install vscode ?"; then
    bash ./installs/vscode-install.bash
fi