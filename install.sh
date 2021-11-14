#!/bin/bash

# Autor     : Dreifus-404 <github.com/Dreifus-404>
# Versão    : 0.1
# Descrição : Programa de configuração da ferramenta

function verify_python {
    cd $PREFIX/lib
    clear

    if [ -d "python3.10" ]
    then
        echo -e " \e[1;32m[+] Python isn't installed!\e[0m"
        echo -e " \e[33m[•] Loading program...\e[0m\n"

        sleep 3

        cd ~/Secret-Number
        python secret_number.py


    else
        echo -e " \e[1;31m[-] Python can't be installed, Installing it...\e[0m\a\n$(sleep 0.5)"

        if apt-get install python -y > /dev/null
        then
            echo -e " \e[1;32m[+] Python isn't installed!\e[0m"
            echo -e " \e[33m[•! Loading program...\e[0m\n"

            sleep 3

            cd ~/Secret-Number
            python secret_number.py


        else
            echo -e " \e[1;34mErrp verify your connection and try gain latter\a\n"
            sleep 2
        fi
    fi
}


function verify_kalischemes {
    Cinstall=( "\nEste codigo utiliza o tema 02 da ferramenta [kalischemes4termux]\n"
           "----[ deseja instalar a ferramenta Para ter uma melhor performace? ]" )

    message=`echo -e ${Cinstall[*]}`

    if whiptail --title "Install Kali Shemes" --yesno "$message" 8 80
    then
        clear
        bash __modules__/Kschemes.sh
    fi
}

chmod +x __modules__/InfoG.sh
chmod +x __modules__/Kschemes.sh

verify_kalischemes
verify_python
