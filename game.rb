# language   : ruby
# author     : Dreifus-404
# link tool  : https://github.com/Dreifus-404/Secret-Number

def banner_main()
    system "clear"
    puts "\n\n\e[37m   █۞███████]▄▄▄▄▄▄▄▄▄▄▃"      
    puts " ▂▄▅█████████▅▄▃▂…                       \e[1;35mS E C R E T\e[0m"
    puts "[███████████████████]                    \e[1;35mN U M B E R\e[0m"
    puts "  ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙"
    puts "----------------------------------------------------------\n\n"
end

def final_banner(result, secret_number)
    system "clear"        
    puts "                         \e[1;34m         ||"
    puts "                         \e[1;34m ▄▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▄\e[0m"
    puts "                         \e[1;34m█\e[0;30m░░░\e[0m█\e[30m░░░░░░░░░░\e[0m▄▄\e[30m░\e[0m██\e[30m░\e[1;34m█\e[0m"
    puts "                         \e[1;34m█\e[0;30m░\e[0m▀▀█▀▀\e[30m░\e[0m▄▀\e[0;30m░\e[0m▄▀\e[0;30m░░\e[0m▀▀\e[0;30m░\e[0m▄▄\e[0;30m░\e[1;34m█\e[0m"
    puts "                         \e[1;34m█\e[0;30m░░░\e[0m▀\e[30m░░░\e[1;34m▄▄▄▄▄\e[0;30m░░\e[0m██\e[30m░\e[0m▀▀\e[30m░\e[1;34m█\e[0m"
    puts "                         \e[1;34m ▀▄▄▄▄▄▀     ▀▄▄▄▄▄▄▀\e[0m\n\n"

    if result == true
        puts "[\e[32m√\e[0m] Parabêns Você Acertou!\e[1;32m"
    else
        puts "\e[1;31mO numero secreto era: \e[1;32m#{secret_number}\e[1;31m"
    end
end
         
def game(get_round, secret_number, name_level, banner_main)
    banner_main()

    puts "\e[32m----\e[1;34m Chute o numero secreto\e[0m\n\n"
    puts "{\e[1;34mLevel\e[0m/\e[1;34mNumber\e[0m} #{name_level}"

    for game in 1..get_round
        print "\n[\e[1;35mtentativa\e[0m] [\e[1;32m#{game}\e[0m]: "
        chute = gets.to_i

        if chute == secret_number
            return true
            break
        else
            result = false
            if secret_number > chute
                 puts " \no numero secreto é\e[32m maior\e[0m que\e[1;35m #{chute}\e[0m"
            else
                 puts " \no numero secreto é\e[31m menor\e[0m que\e[1;35m #{chute}\e[0m"
            end
        end
    end

    return result
end            

def game_informations(banner_main)
    banner_main()
    puts "\e[32m----\e[0m \e[1;34mintroduction\e[0m\n\n"
    puts "   \e[33m-$ Este Jogo Consiste em Tentar Acertar Um Numero Secreto"
    puts "   ~$ A Quantidade De Chances Vai Depender Do Level Que Vc Escolher"
    puts "   ~$ Se errar Todas as tentativas, O Numero Secreto Sera revelado"
    puts "   ~$ Espero Que Se Divirta Tenha Um Otimo Jogo"
    puts "   ~$ Code By Dreifus and Sasaki\n\e[0m"
    puts "\e[32m----\e[1;34m Press Enter For Continue\n\e[0m\n"
    printf ": "
    inicio = gets.to_s
    system "clear"
end

game_informations(banner_main)
banner_main()

puts "\e[32m----\e[1;34m levels of game\e[0m\n\n"   
puts "       01  : \e[1;32mEasy\e[0m         [\e[1;32m5\e[0m -\e[1;32m tentativas\e[0m]"
puts "       02  : \e[33mNormal\e[0m       [\e[32m7\e[0m -\e[33m tentativas\e[0m]"
puts "       03  : \e[1;31mHard\e[0m         [\e[1;31m9\e[0m -\e[1;31m tentativas\e[0m]"
puts "       04  : \e[1;35mImpossible\e[0m   [\e[1;35m12\e[0m -\e[1;35m tentativas\e[0m]\n\n"
print "[\e[1;34mlevel\e[0m]> "
level_game = gets.to_i

case level_game
when 1
    get_round = 5                       
    name_level = "[\e[1;32mEasy\e[0m] - [o numero esta entre \e[1;32m0\e[0m e \e[1;32m50\e[0m]"
    secret_number = rand(0..50)

when 2
    get_round = 7
    name_level = "[\e[33mNormal\e[0m] - [o numero esta entre \e[33m0\e[0m e \e[33m170\e[0m]"
    secret_number = rand(0..170)

when 3
    get_round = 9
    name_level = "[\e[1;31mHard\e[0m] - [o numero esta entre \e[1;31m0\e[0m e \e[1;31m350\e[0m]"
    secret_number = rand(0..350)

when 4
     get_round = 11
     name_level = "[\e[1;35mImpossible\e[0m] - [o numero esta entre \e[1;35m0\e[0m - \e[1;35m550\e[0m]"
     secret_number = rand(0..550)
end

result = game(get_round, secret_number, name_level, banner_main)
final_banner(result, secret_number)
