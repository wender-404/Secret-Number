#!/bin/bash

clear
cd $PREFIX/bin # caminho onde ficam os pacotes instalados

if test -x ruby; then
    echo -e "\e[32mThe ruby ​​package is installed\n starting the game..."; sleep 3
    cd ~/Secret-Number; ruby game.rb
else
    echo -e "\e[1;31m The ruby ​​package is not installed\e[0m\n[...] \e[32minstalling..."
    apt-get install ruby -y > /dev/null
    if test $? -eq 0; then
        echo -e "\e[32m The ruby ​​package has been installed\e[0m\starting the game..."; sleep 3
        cd ~/Secret-Number; ruby game.rb
    
    else
        clear; cd ~/Secret-Number
        echo -e "\e[1;31m it was not possible to install ruby\e[0m\nrum \e[33mpkg install ruby -y\e[0m and rejoin the installation file again"
     fi
fi
