class Piece
    
    def initialize(color, board, pos)
        @symbol = color
        @board = board
        @pos = pos

        board.add_piece(self,pos)
    end

    def to_s
        symbol.to_s
    end

    def empty?
        false
    end

    def valid_moves

    end

    def pos=(val)
    end
    def symbol
    end

    private
    def move_into_check?(end_pos)
    end

end