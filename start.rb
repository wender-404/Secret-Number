#Jogo :)
def ex
  system "clear"
  puts "\e[33m                       [$] introduction"
  puts "\n\n"
  puts "\e[33m~$ Este Jogo Consiste em Tentar Acertar Um Numero Secreto"
  puts "\e[33m~$ A Quantidade De Chances Vai Depender Do Level Que Vc Escolher"
  puts "\e[33m~$ Se Voce errar Todos Os Numeros, No Fim O Numero Secreto Sera Revelado"
  puts "\e[33m~$ Espero Que Se Divirta Tenha Um Otimo Jogo"
  puts "\e[33m~$ Code By Dreifus and Sasaki"
  puts "\n\n"
  puts "                   [$] Press Enter For Continue"
  puts "\n"
  inicio = gets
  system "clear"
end
def tl
  system 'clear'
  puts "\e[32m|                       A J U S T E _ A _ T E L A                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\e[32m|                                                                          |"
  puts "\n\n"
  puts "[~$] And Press Enter For Continue"
  puts "\n"
  a = gets
end
def b1
  system "clear"
  puts "\n\n\n"
  puts "\e[37m   █۞███████]▄▄▄▄▄▄▄▄▄▄▃"
  puts " ▂▄▅█████████▅▄▃▂…                   S E C R E T"
  puts "[███████████████████]                N U M B E R"
  puts "  ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙"
  puts "---------------------------------------------------"
  puts "\n\n"
end
def b2
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
def lv
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
tl
ex
b1
level = lv
b1
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
ns = rand(max)
b1
puts "•Mode• > #{ll}"
puts "•attempts• > #{mt}"
for game in 1.. + mt.to_i
  puts "\n"
  puts "•attempt• > " + game.to_s
  puts "[>] Chute o Numero Secreto"
  puts "\n"
  ct = gets.to_i
  puts "\n"
  if ct == ns
    test = true
    break
    end
  if ct != ns
    test = false
    puts "> Você Errou"
    if ns > ct
      puts "> O Numero e Maior"
      end
    if ns < ct
      puts "> O Numero e Menor"
      end
    end
  end
if test == false
  b1()
  puts "\e[1;31m•O Numero Secreto Era• > " "\e[32m#{ns}"
  b2()
  b1()
end
if test == true
  system "clear"
  puts "\n\n"
  puts "\n\n\n"
  b1()
  puts "\e[1;32m                 [√] Parabêns Você Acertou"
  b2()
  b1()
end
