#!/bin/bash

# Autor     : Dreifus-404 <github.com/Dreifus-404
# Versão    : 0.1
# Descrição : Instalação da ferramenta kalischemes

cd ~/

Info_Kschemes=( "\n\n Kali Shemes 4 Termux, é uma ferramenta que disponibiliza"
                "4 temas do Kali Linux OS, para o termux, a ferramenta Secret-Number"
                "foi feita para ser executada a partir do tema 02 ao 04 para uma"
                "melhor experiencia visual\n\n"
                "[Manual]\n"
                " Após o codigo do Kali Shemes 4 Termux ser aberto ele pede o tema"
                "que deseja, basta escolher, após escolher ele pede o nome do usuario (username)"
                "depois de declarado o nome de usuario, ele pede o nome da maquina\n"
                "ex:\n"
                "E.g. kali, android, redmi-6-pro, etc.\n>>> Termux\n\n"
                " Caso nada seja colocado no nome de usuario, ele utiliza o [$(whoami)]\n"
                " Caso nada seja colocado no nome da maquina, ele utiliza o [localhost]\n\n"
                "<Pressione enter para continuar>\n" )

msg_Kschemes=`echo -e "${Info_Kschemes[*]}"`

if [ -x kalischemes4termux ]; then
    echo -e " \e[1;32m[+] Kalischemes4termux isn't installed!\e[0m"
    echo -e " \e[1;33m[•] Loading program..."

    sleep 3
    whiptail --title "Kali Schemes 4 Termux" --msgbox "$msg_Kschemes" 23 90

    cd ~/kalischemes4termux
    ./kalischemes4termux.sh

else
    echo -e " \e[1;31m[!] KaliShemes4Termux can't be installed, Installing it...\n"

    if git clone https://github.com/sidneypepo/kalischemes4termux; then
        echo -e " \e[1;32m[✓] KaliSchemes4Termux isn't installed!\e[0m"
        echo -e " \e[1;33m[•] Loading program..."

        sleep 3
        whiptail --title "Kali Schemes 4 Termux" --msgbox "$msg_Kschemes" 23 90

        cd ~/kalischemes4termux
        ./kalischemes4termux

    else
        echo -e " \e[1;34m[?] Erro, Verify your connection and try gain\n"
        sleep 3
    fi

fi
