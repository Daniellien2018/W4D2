
class Piece
    attr_reader :color, :board 
    attr_accessor :position

    def initialize(board, position, color)
        @board = board
        @color = color
        @position = position
    end


    def enemy?(position)
        board[position].color != color
    end

end