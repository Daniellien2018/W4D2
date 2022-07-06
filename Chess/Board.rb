
class Board

    def initialize
        @board = Array.new(8) {Array.new(8,"_")} #NullPiece.instance
    end

    def [](pos)
        row = pos[0]
        col = pos[1]
        @board[row][col] #@board[1,2]
    end

    def []= (pos,val)
        row = pos[0]
        col = pos[1]
        @board[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        if !valid_pos(start_pos) || !valid_pos(end_pos)
            raise "this move is not valid"
        else
            @board[start_pos] = @board[end_pos]
        end
    end

    def valid_pos?(pos)
        #if withint 8x8, if empty
        row = pos[0]
        col = pos[1]
        (0..7).include?(col) && (0..7).include?(row) 
    end

    def add_piece(piece, pos)
        
    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup
        
    end
    
    def move_piece!(color, start_pos, end_pos)

    end

end
