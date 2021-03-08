# Coded by Dreifus

def program_credits()
    system "clear; echo '                            \e[33mᴄʀᴇᴅɪᴛs\e[0m </>\n'"
    system "echo '   █۞███████]▄▄▄▄▄▄▄▄▄▄▃'"
    system "echo ' ▂▄▅█████████▅▄▃▂'"
    system "echo '[███████████████████]'"
    system "echo '  ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙'"
    system "echo '———————————————————————[\e[32m coded\e[0m by \e[1;40;31mdreifus\e[0m ]———————————————————————\n'"
    system "sleep 6"
end

def explication_game()
    system "clear"
    puts "\e[0;33m                       [$] introduction"
    puts "\n\n"
    puts "\e[33m~$ Este Jogo Consiste em Tentar Acertar Um Numero Secreto"
    puts "\e[33m~$ A Quantidade De Chances Vai Depender Do Level Que Vc Escolher"
    puts "\e[33m~$ Se errar Todas as tentativas, O Numero Secreto Sera revelado"
    puts "\e[33m~$ Espero Que Se Divirta Tenha Um Otimo Jogo"
    puts "\e[33m~$ Code By Dreifus and Sasaki"
    puts "\n\n"
    puts "                   [$] Press Enter For Continue"
    puts "\n"
    inicio = gets
    system "clear"
end

def banner_1()
    system "clear"
    puts "\n\n\n\e[37m   █۞███████]▄▄▄▄▄▄▄▄▄▄▃"
    puts " ▂▄▅█████████▅▄▃▂…                   S E C R E T"
    puts "[███████████████████]                N U M B E R"
    puts "  ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙"
    puts "---------------------------------------------------"
    puts "\n\n"
end

def banner_2()
    puts "\n\n\n"
    puts "                   ▄▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▄"
    puts "                  █░░░█░░░░░░░░░░▄▄░██░█"
    puts "                  █░▀▀█▀▀░▄▀░▄▀░░▀▀░▄▄░█"
    puts "                  █░░░▀░░░▄▄▄▄▄░░██░▀▀░█"
    puts "                   ▀▄▄▄▄▄▀─────▀▄▄▄▄▄▄▀"
    puts "\n\n"
    puts "                 [~$] Press Enter For Exit "
    puts "\n"
    gem = gets.to_i
end

def level_select()
    puts "              [~$] Selec One Level"
    puts "\n\n"
    puts "[1] Low"
    puts "[2] Normal"
    puts "[3] Hard"
    puts "\n"
    level = gets.to_i
    return level
end

#Execuçōes de Defs :)

explication_game()
banner_1()
level = level_select()
banner_1()

#Fim Das Execuçōes

case level
when 1
    max = 50
    ll = "•low•"
    mt = 5
when 2
    max = 170
    ll = "•Normal•"
    mt = 7
when 3
    max = 350
    ll = "•Hard•"
    mt = 9
end

banner_1()

secret_number = rand(max.to_i)
puts "•Mode• > #{ll}"
puts "•attempts• > #{mt}"

for game in 1..mt
    puts "\n•attempt• > #{game}"
    puts "[\e[32m>\e[0m] Chute o numero secreto"
    puts "\n"
    chute_number = gets.to_i
    if chute_number == secret_number
        player = true
        break
    else
        player = false
        puts "\n[\e[31mX\e[0m] Você errou!"
        if secret_number > chute_number
	    puts "> O Numero Secreto é maior \n"
        else
            puts "> O Numero Secreto é menor \n"
        end
    end
end

if player == false
     banner_1()
     puts "\e[1;31mO numero secreto era > \e[1;32m#{secret_number}\e[1;31m"
     banner_2()
     program_credits()
     banner_1()
end

if player == true
     banner_1()
     puts "[\e[32m√\e[0m] Parabêns Você Acertou!\e[1;32m"
     banner_2()
     program_credits()
     banner_1()
end

