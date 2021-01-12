#Jogo :)
def ex
  system "clear"
  puts "                       [$] introduction"
  puts "\n\n"
  puts "~$ Este Jogo Consiste em Tentar Acertar Um Numero Secreto"
  puts "~$ A Quantidade De Chances Vai Depender Do Level Que Vc Escolher"
  puts "~$ Se Voce errar Todos Os Numeros, No Fim O Numero Secreto Sera Revelado"
  puts "~$ Espero Que Se Divirta Tenha Um Otimo Jogo"
  puts "~$ Code By Dreifus and Sasaki"
  puts "\n\n"
  puts "                   [$] Press Enter For Continue"
  puts "\n"
  inicio = gets
  system "clear"
end
def b1
  system "clear"
  puts "\n\n\n"
  puts "   █۞███████]▄▄▄▄▄▄▄▄▄▄▃"
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
def b3
  puts "\n\n\n"
  puts "   █۞███████]▄▄▄▄▄▄▄▄▄▄▃"
  puts " ▂▄▅█████████▅▄▃▂…                     B A C K"
  puts "[███████████████████]               P R O G R A M"
  puts "  ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙"
  puts "---------------------------------------------------"
  puts "\n\n"
  puts "                [$] Press 1 For Restart"
  puts "\n\n"
  puts "                [$] Press Enter For Exit"
  puts "\n\n"
  sr = gets.to_i
  return sr
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
    system "clear"
    puts "\n\n"
    puts "\n\n\n"
    b1()
    puts "                 [√] Parabêns Você Acertou"
    b2()
    b1()
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
  puts "•O Numero Secreto Era• > #{ns}"
  b2()
  b1()
end
