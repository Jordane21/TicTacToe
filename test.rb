require 'pry'


class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :value, :case_number
      
    def initialize(value = "")
        @value = value
        @case_number = 1..9
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    end
  
    def to_s
        puts @value.to_s
    #TO DO : doit renvoyer la valeur au format string
    end
end

class Board
    include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    attr_accessor :board

    def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
        @board = board[" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    def add_response
        @board << @value
    end

    def to_s
  #TO DO : afficher le plateau
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
        i = 0
        board[i] = @value
        for i in 0..8
            if board[i] == nil
            puts "Which sign do you want to play?"
            elsif board[i] == "x"
            puts board[i] = "x"
            else board[i] == "o"
            puts board[i] = "o"
            i += 1
            end
        end
    end

    def victory?
        winning_combinations = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8],
            [2, 4, 6]
        ]
    #TO DO : qui gagne ?
    end
end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
    attr_accessor :name, :value
    attr_writer :winner
  
    def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
        @name = name
        @value = x || o
        @winner = winner
    end

    def get_name
        puts "What's your name buddy? "
        @name = gets.chomp
        @name2 = @name.capitalize
        @name.capitalize!
    end

    def value_choice
        puts "What sign do you choose? (x or o) "
        @value = gets.chomp
        if @value != "x" or "o"
            puts "You cannot choose this sign. What do you choose? (x or o) "
        end
    end

end

class Game
    def initialize
    #TO DO : créé 2 joueurs, créé un board
        @player1 = player1
        @player2 = player2
        @board = board
    end

    def go
    # TO DO : lance la partie
    end

    def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    end

end

Game.new.go