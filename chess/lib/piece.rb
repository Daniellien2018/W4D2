
class Piece
    attr_reader :color, :board, :position

    def initialize(board, position,color)
        @board = board
        @color = color
        @position = position
    end


    def enemy?(position)
        !board[position].nil? && board[position].color != color
    end

    def available_moves
            
    end
end