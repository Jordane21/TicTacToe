class Board # On définit une class Board
    attr_accessor :board # On définit l'attribut tableau

    def initialize(board)
        @board = board[" ", " ", " ", " ", " ", " ", " ", " ", " "] # Les valeurs du tableau sont l'équivalent d'un array vide
    end

    def in_the_board
        for i in 0..8
            if i == nil
            puts "The game has not begun yet."
            elsif board[i] == "x"
            puts board[i] = "x"
            else board[i] == "o"
            puts board[i] = "o"
            i += 1
        end
    end

    def display_board(board) # La fonction display board permet de dessiner le tableau et de placer visuellement les valeurs de l'array qui va être rempli.
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end
end 

class BoardCase
    attr_accessor :case, :response
    
    def initialize(response)
        @case = response
    end

    def player_response(x, o)
        @case == "x" || "o"
    end
end

class Player
    attr_accessor :name, :state

    def initialize
        @name = name
        @team = "x" || "o"
    end

    def get_name
        puts "What's your name my friend? "
        @name = gets.chomp
    end

    def which_team
        puts "Which sign do you want to play #{@name}?(type x or o)"
        @team = gets.chomp
    end

end

class Game
    attr_accessor :



    position = gets.strip
    token = "X"
    @board[position.to_i] = token

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
        if 
end