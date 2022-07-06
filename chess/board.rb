require_relative "pieces"


class Board
    # get the reader
    attr_reader :grid

    def self.start_chess
        board = self.new
        (0...8).each do |col|
            board[[1, col]] = Pawn.new(board, [1, col], :black)
            board[[6, col]] = Pawn.new(board, [6, col], :white)
        end
       
        [[0,:black], [7,:white]].each do |(r, color)|
            board[[r, 0]] = Rook.new(board, [r, 0], color)
            board[[r, 7]] = Rook.new(board, [r, 7], color)

            board[[r, 1]] = Knight.new(board, [r, 1], color)
            board[[r, 6]] = Knight.new(board, [r, 6], color)

            board[[r, 2]] = Bishop.new(board, [r, 2], color)
            board[[r, 5]] = Bishop.new(board, [r, 5], color)
            
            board[[r, 3]] = Queen.new(board, [r, 3], color)

            board[[r, 4]] = King.new(board, [r, 4], color)
        end
        return board
    end

    # initialize the board, which has size = 8 * 8
    def initialize
        @grid = Array.new(8) {Array.new(8)} #nilpiece
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

    def empty?(pos)
        row, col = pos
        grid[row][col].nil? # nilpiece
    end

    def move_piece(start_pos, end_pos)
        piece = self[start_pos]

        raise "this is not a valid position" if !self.valid_pos?(end_pos)
        raise "this is not a valid position" if !piece.available_moves.include?(end_pos)

        self[start_pos] = nil
        self[end_pos] = piece 

        piece.position = end_pos
        #check if end pos is in_bound
        #check if end_pos is in available_moves
        #remove piece at start_pos
        #place piece at end_pos
    end
end
