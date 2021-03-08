#!/data/data/com.termux/files/usr/bin/bash

if [ -f start.rb ]; then
    apt install ruby -y
    if [ $? -eq 0 ]; then
        if [ -x start.rb ]; then
            ruby start.rb
        else
            chmod a+x start.rb
            ruby start.rb
        fi
    else
         echo -e "[\e[31mX\e[0m] ERRO CONECTION NOT FOUND!"
    fi
else
    echo -e "[\e[31mX\e[0m] Erro \e[32mstart.rb\e[0m NOT FOUND!"
fi

# Se kibar e gay :)
