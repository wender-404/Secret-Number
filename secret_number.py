#!/usr/bin/env python3

"""

@ Secret - Number
------------------

  [ Um mini jogo feito em python para distrair a sua mente :3 ]

@ Informações
--------------

      Autor             : Dreifus-404 <github.com/Dreifus-404>
      Linguagem         : Python3.10
      Nova versão       : 1.0
      Velha versão      : 0.3
      Lines/Words/Char  : 317/764/10566 - (ALT+D | GNU nano)

@ Variaveis
-------------

  [ Introdução as variaveis ]

      +============+=====================+============================================+
      ▌    nome    ▌     significado     ▌                  função                    ▌
      +============+=====================+============================================+
      | dificultyG | Dificuldade do jogo | Utilizado para situar o jogo sobre o level |
      +------------+---------------------+--------------------------------------------+
      |   infoG    | Informações do jogo | Utilizada para receber os dados do game    |
      +------------+---------------------+--------------------------------------------+
      |  Snumber   |   Numero secreto    | Utilizada para definir o numero secreto    |
      +------------+---------------------+--------------------------------------------+
      |  Cnumber   |   Numero chutado    | Utilizada para armazenar o numero chutado  |
      +------------+---------------------+--------------------------------------------+

"""

# Importando Libs necessarias

import os
import time
import random

# Class func, onde estarão as funções do codigo

class func:
    def introdution():
        def Sys_Banner():
            os.system("clear")

            banner_1 = [ '   ╲    ╱',
                         '   ╱▔▔▔▔╲',
                         '  ┃┈▇┈┈▇┈┃',
                         '╭╮┣━━━━━━┫╭╮',
                         '┃┃┃      ┃┃┃',
                         '╰╯┃      ┃╰╯',
                         '  ╰┓┏━━┓┏╯',
                         '   ╰╯  ╰╯',
                         '---------------------------------------------------------------------\n' ]


            banner_2 = [ "> ---[ \033[1;34mInvadindo sistema... \033[0m]",
                         ">     [!!] O dispositivo prescisa do numero secreto\a\n",
                         "> ---[ \033[1;34mInstalando Hack.apk descobridor de numeros secretos.. \033[0m]",
                         ">     [✓] Hack.apk instalado no dispositivo\a\n",
                         "> ---[ \033[1;34mHack.apk descoberto | Android Travado \033[0m]",
                         ">     [??] Descubra o numero secreto  e destrave o android!!\a\n" ]


            for x in range(0, 9): # Imprimir banner_1
                print(banner_1[x])
                time.sleep(0.5)


            for j in range(0, 6): # Imprimir banner_2
                print(banner_2[j])
                time.sleep(4)


        os.system("bash __modules__/InfoG.sh")
        Sys_Banner()


    def loading_Banner():
        for x in range(0, 21):
            os.system("clear")
            color = random.randint(31, 37)

            print("                         ╭━━━━━━━━━━━━━━◢◤━━━━╮")
            print("                         ┃                    ┃")
            print("                         ┃     \033[1;40mLoading...\033[0m     ┃")
            print("                         ┃                    ┃")
            print("                         ╰━━━━◢◤━━━━━━━━━━━━━━╯")
            print(f"                         [\033[{color + 10};30m{'•' * x}\033[0m]")

            time.sleep(0.2)

        time.sleep(1)


    def credits_Banner():
        banner = [ "             '||''|.",
                   "              ||   ||              \033[1;40mD R E I F U S - 404\033[0m",
                   "              ||    ||           -----------------------",
                   "              ||    ||             \033[1;40m@ SECRET NUMBER v1.0\033[0m",
                   "             .||...|'",
                   "             _______________________________________________",
                   "             \033[1mCTRL+D exit\033[0m\n" ]

        os.system("clear")

        for x in range(0, 7):
            print(banner[x])
            time.sleep(0.4)

        time.sleep(1)


    def get_Level(credits_Banner):
        def error_level(banner, credits_Banner):
            while True:
                os.system("clear")
                print("\033[1m\aOPS, Opção invalida!\033[0m")

                time.sleep(2)
                credits_Banner()

                for x in range(0, 5):
                    print(banner[x])
                    time.sleep(0.5)


                time.sleep(1)

                try:
                    level = int(input("< \033[1mmodo\033[0m /> "))

                    if not level > 4 or level < 1:
                        return level
                        break


                except:
                     time.sleep(0.5)


        banner = [ '</\033[1m @ Selecione um modo\033[0m >\n',
                   '      </ 01 >  \033[1;40;32mEasy\033[0m',
                   '      </ 02 >  \033[1;40;34mNormal\033[0m',
                   '      </ 03 >  \033[1;40;31mHard\033[0m',
                   '      </ 04 >  \033[1;40;35mImpossible\033[0m\n' ]

        for x in range(0, 5):
            print(banner[x])
            time.sleep(0.5)


        try:
            level = int(input('< \033[1mmodo\033[0m/> '))

            if level > 4 or level < 1:
                level = error_level(banner, credits_Banner)

            return level


        except:
            level = error_level(banner, credits_Banner)
            return level



    def game_start(get_Level, credits_Banner):
        def game_win(Snumber):
            banner_1 = [ '   ╲    ╱',
                         '   ╱▔▔▔▔╲',
                         '  ┃┈▇┈┈▇┈┃',
                         '╭╮┣━━━━━━┫╭╮',
                         '┃┃┃      ┃┃┃',
                         '╰╯┃      ┃╰╯',
                         '  ╰┓┏━━┓┏╯',
                         '   ╰╯  ╰╯',
                         '---------------------------------------------------------------------\n' ]

            banner_2 = [ "> ---[ \033[1;32mParabéns Você acertou o numero secreto\033[0m ]",
                         f">     [!] Android Destravado, Numero Secreto : \033[1;32m{Snumber}\033[0m\n" ]


            for x in range(0, 9):
                print(banner_1[x])
                time.sleep(0.5)

            time.sleep(1)

            for x in range(0, 2):
                print(banner_2[x])
                time.sleep(1)

            time.sleep(2)


        def game_over(Snumber):
            banner_1 = [ '   ╲    ╱',
                         '   ╱▔▔▔▔╲',
                         '  ┃┈▇┈┈▇┈┃',
                         '╭╮┣━━━━━━┫╭╮',
                         '┃┃┃      ┃┃┃',
                         '╰╯┃      ┃╰╯',
                         '  ╰┓┏━━┓┏╯',
                         '   ╰╯  ╰╯',
                         '---------------------------------------------------------------------\n' ]

            banner_2 = [ '> ---[ \033[1;34mPolicia federal pegou seus dados\033[0m ]',
                         f'>     [\033[1;31m!\033[0m] O numero secreto era \033[1;32m{Snumber}\033[0m\n',
                         '> ---[\033[1;31mGAME OVER\033[0m]' ]

            for x in range(0, 9):
                print(banner_1[x])
                time.sleep(0.5)

            time.sleep(1)

            for x in range(0, 3):
                print(banner_2[x])
                time.sleep(4)

            time.sleep(2)


        def game_Banner(infoG):
            main_banner = [ '                         @ Secret Number [info.]                   ',
                            '                       ---------------------------\n               ',
                            '______█████████                                                    ',
                            '______█▄█████▄█                                                    ',
                            f'______█▼▼▼▼▼▼▼█    > Modo   : {infoG[0]}                          ',
                            f'_____██▌_____██▌   > Rounds : {infoG[2]}                          ',
                            f'______█▲▲▲▲▲▲▲█    > Snumer : o numero secreto esta entre \033[1;40;31m0\033[0m, \033[1;40;32m{infoG[1]}\033[0m ',
                            '______█████████                                                    ',
                            '______██_____██                                                    ',
                            '___________________________________________________________________',
                            '[ \033[1;40mQual é o numero secreto?\033[0m ]\n' ]

            os.system("clear")

            for k in range(0, 11):
                print(main_banner[k])
                time.sleep(0.3)


        def info_game(dificultyG):
            os.system("clear")

            if dificultyG == 1: i = ['\033[1;40;32mEasy\033[0m', 50, 12]

            elif dificultyG == 2: i = ['\033[1;40;34mNormal\033[0m', 170, 10]

            elif dificultyG == 3: i = ['\033[1;40;31mHard\033[0m', 255, 7]

            elif dificultyG == 4: i = ['\033[1;40;35mImpossible\033[0m', 599, 5]

            return i


        dificultyG = get_Level(credits_Banner)

        if dificultyG != False:
            infoG = info_game(dificultyG)
            Snumber = random.randint(0, infoG[1])

            game_Banner(infoG)

            for game in range(0, infoG[2]):
                try:
                    Cnumber = int(input(f"Snumber <{Snumber}/{game+1}> "))

                except:
                    Cnumber = 0


                if Cnumber == Snumber:
                    result_game = True
                    break

                elif Snumber > Cnumber:
                    result_game = False
                    print(f"\n[!!] O numero secreto é \033[1;32mmaior\033[0m que {Cnumber}\n\a")

                else:
                    result_game = False
                    print(f"\n[!!] O numero secreto é \033[1;31mmenor\033[0m que {Cnumber}\n\a")


            os.system("clear")

            if result_game:
                game_win(Snumber)

            else:
                game_over(Snumber)


        else:
            os.system("clear")
            raise EOFError("codigo fechado")

# Classe main, responsavel pela execução das funções

class __main__:
    func.introdution()

    func.loading_Banner()
    func.credits_Banner()

    func.game_start(func.get_Level, func.credits_Banner)


__main__ # Fim
