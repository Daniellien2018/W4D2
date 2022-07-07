
class Piece
    attr_reader :color, :board 
    attr_accessor :position

    def initialize(board, position, color)
        @board = board
        @color = color
        @position = position
    end


    def enemy?(position)
        board[position].color != color &&  !board.empty?(position)
    end

    def current_row
        position.first
    end

    def current_col
        position.last
    end

end