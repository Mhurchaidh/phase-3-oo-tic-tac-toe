class TicTacToe 
    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,4,8],
        [2,4,6],
        [0,3,6],
        [1,4,7],
        [2,5,8]
    ]
    attr_accessor :board
    def initialize
        @board = [' ', ' ', ' ', 
                  ' ', ' ', ' ', 
                  ' ', ' ', ' ']
    end

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-------------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-------------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index input
        @index = ((input.to_i) - 1)
    end

    def move index, token
        @board[index] = token
    end

    def position_taken? index
        if @board[index] == ' '
            false
        else
            true
        end
    end

    def valid_move? position
        if position == 0..8 && position_taken?(position) == false
            true
        else
            nil
        end
    end

    def turn_count 
        @count = @board.count{|index| index != ' '};
    end

    def current_player 
        if turn_count.odd?
            'O'
        else
            'X'
        end
    end
end