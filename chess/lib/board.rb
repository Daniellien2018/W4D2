require_relative "bishop.rb"
require_relative "king.rb"
require_relative "knight.rb"
require_relative "pawn.rb"
require_relative "queen.rb"
require_relative "rook.rb"


class Board
    # get the reader
    attr_reader :grid

    def self.start_chess
        board = self.new
        (0...8).each do |col|
            board[[1, col]] = Pawn.new(:black)
            board[[6, col]] = Pawn.new(:white)
        end
       
        [[0,:black], [7,:white]].each do |(r, color)|
            board[[r, 0]] = Rook.new(color)
            board[[r, 7]] = Rook.new(color)

            board[[r, 1]] = Knight.new(color)
            board[[r, 6]] = Knight.new(color)

            board[[r, 2]] = Bishop.new(color)
            board[[r, 5]] = Bishop.new(color)
            
            board[[r, 3]] = Queen.new(color)

            board[[r, 4]] = King.new(color)
        end
        return board
    end

    # initialize the board, which has size = 8 * 8
    def initialize
        @grid = Array.new(8) {Array.new(8)}
    end

    #define the braket method to find out the value at required position.
    def [](position)
        row, col = position
        grid[row][col]
    end

    #define the setter method to place the piece at required position on the board
    def []=(position, piece)
        row, col = position
        grid[row][col] = piece
    end

    #define the position is valid or not, compare the row and col of position with grid's length
    def valid_pos?(pos)
        row, col = pos
        if row >= 0 && row <= grid.length && col >= 0 && col <= grid.length
            return true
        else
            return false
        end
    end

end
