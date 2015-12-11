# Author:       Matthew Palomar
# Date:         11/30/15

# Description:  Build a tic-tac-toe game on the command line where two human players
#               can play against each other and the board is displayed in between turns.
#
#               http://www.theodinproject.com/ruby-programming/oop?ref=lnav

class TicTacToe

    attr_reader :current_board, :player_x, :player_o
    @@winning_combos = [ [0,1,2],
                         [3,4,5],
                         [6,7,8],
                         [0,3,6],
                         [1,4,7],
                         [2,5,8],
                         [0,4,8],
                         [2,4,6]]

    def initialize
        @current_board = Board.new                      # New Board object
        @player_x = Player.new                          # New Player object for player 1
        @player_o = Player.new                          # New Player object for player 2
        @winner = nil                                   # Used to determine winner
        @current_turn = 1                               # Used to count number of turns
    end

    # Putting it all together and running all the pieces
    def new_game
        print_title
        get_player_names
        print_instructions
        print_game_start
        start_playing
        print_winner
        print_game_over
    end

    # Print out TicTacToe welcome message
    def print_title
        puts
        puts "------------------------------------------------------------"
        puts "                       Tic-Tac-Toe"
        puts "------------------------------------------------------------"
        puts
    end

    # Get player names
    def get_player_names
        puts "Player Name Entry"
        puts
        print "Player 1: "
        @player_x.name = gets.chomp
        @player_x.symbol = "X"
        puts
        print "Player 2: "
        @player_o.name = gets.chomp
        @player_o.symbol = "O"
        puts
    end

    # How to play this game
    def print_instructions
        puts "------------------------------------------------------------"
        puts "                       Instructions"
        puts "------------------------------------------------------------"
        puts
        puts "Welcome #{player_x.name} and #{player_o.name} to my Tic-Tac-Toe game!"
        puts
        puts "Each placement has a corresponding number designation"
        puts "You must enter the number where you want to place your piece"
        puts
        puts " 1 | 2 | 3 "
        puts "---|---|---"
        puts " 4 | 5 | 6 "
        puts "---|---|---"
        puts " 7 | 8 | 9 "
        puts
    end

    # Prints the start of the game message
    def print_game_start
        puts "------------------------------------------------------------"
        puts "                        Game Start"
        puts "------------------------------------------------------------"
        puts
        puts "#{player_x.name} is 'X' and #{player_o.name} is 'O'"
        puts
    end

    # Start game
    def start_playing
        take_turns until game_over
    end

    # Choose which players turn it is
    def take_turns
        @current_turn.even? ? turn(@player_o) : turn(@player_x)
    end

    # Next player turn
    def turn(player)
        show_turn(player)
        input = get_player_input

        if @current_board.update_board(input, player.symbol)
            @current_turn += 1
        else
            puts
            puts "That cell is not available!"
        end
        @current_board.print_board
        check_for_winner(player)
    end

    # Print turn information
    def show_turn(player)
        puts "Turn \##{@current_turn}"
        puts "Player: #{player.name} Symbol: #{player.symbol}"
        puts
    end

    # Get player move
    def get_player_input
        input = nil
        until (0..8).include?(input)
            print "Enter the location you'd like to place your piece: "
            input = gets.chomp.to_i - 1
        end
        input
    end

    # Check player moves against wining combos
    def check_for_winner(player)
        @@winning_combos.each do |win|
            @winner = player if win.all? {|cell_value| @current_board.board[cell_value] == player.symbol}
        end
    end

    # Prints the winner of the game message
    def print_winner
        if @current_turn > 9 && !@winner
            puts "Cat's Game (Tie)!"
            puts
        else
            puts "Congratulations, #{@winner.name}.  You winrar!"
            puts
        end
    end

    # Game over conditions
    def game_over
        @current_turn > 9 || @winner
    end

    # Prints the end of game message
    def print_game_over
        puts "------------------------------------------------------------"
        puts "                        Game Over"
        puts "------------------------------------------------------------"
        puts
        puts "Thanks for playing this crappy game!"
        puts "Made by majopa"
        puts
    end

    # Game Board Object
    class Board
        attr_reader :board, :empty_cell

        def initialize
            @empty_cell = " "
            @board = Array.new(9, empty_cell)
        end

        # Print current game board (3x3)
        def print_board
            puts
            puts " #{@board[0]} | #{@board[1]} | #{board[2]}"
            puts "---|---|---"
            puts " #{@board[3]} | #{@board[4]} | #{board[5]}"
            puts "---|---|---"
            puts " #{@board[6]} | #{@board[7]} | #{board[8]}"
            puts
        end

        # Updates board after player chooses move
        def update_board(position, symbol)
            if @board[position] == @empty_cell
                @board[position] = symbol
                true
            else
                false
            end
        end
    end

    # Player Class : COULD USE << Player = Struct.new(:name, :symbol) >> INSTEAD
    class Player
        attr_accessor :name, :symbol

        def initialize
            @name = name
            @symbol = symbol
        end
    end

end

game = TicTacToe.new
game.new_game
