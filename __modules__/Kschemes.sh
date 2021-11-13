#!/bin/bash

# Autor     : Dreifus-404 <github.com/Dreifus-404
# Versão    : 0.1
# Descrição : Instalação da ferramenta kalischemes

cd ~/

if [ -x kalischemes4termux ]; then
    echo -e " \e[1;32m[+] Kalischemes4termux isn't installed!\e[0m"
    echo -e " \e[1;33m[•] Loading program..."

    sleep 3

    cd ~/kalischemes4termux
    ./kalischemes4termux.sh

else
    echo -e " \e[1;31m[!] KaliShemes4Termux can't be installed, Installing it...\n"

    if git clone https://github.com/sidneypepo/kalischemes4termux; then
        echo -e " \e[1;32m[✓] KaliSchemes4Termux isn't installed!\e[0m"
        echo -e " \e[1;33m[•] Loading program..."

        sleep 1

        cd ~/kalischemes4termux
        ./kalischemes4termux

    else
        echo -e " \e[1;34m[?] Erro, Verify your connection and try gain\n"
        sleep 3
    fi

fi
