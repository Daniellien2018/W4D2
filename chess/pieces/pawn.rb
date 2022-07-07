require_relative 'piece'
class Pawn < Piece
    def foward_dir
        color == :black ? 1 : -1
    end

    def at_start?
        color == :black && current_row == 1 || color == :white && current_row == 6
    end
    
    def available_moves
        moves = []
        
        one_forward = [current_row + foward_dir, current_col]
        if board.empty?(one_forward)
            moves << one_forward
        end

        two_forward = [current_row + (foward_dir * 2 ), current_col]
        if board.empty?(two_forward) && board.empty?(one_forward) && at_start?
            moves << two_forward
        end

        diag_left = [current_row + foward_dir, current_col + 1]
        diag_right = [current_row + foward_dir, current_col - 1]

        if enemy?(diag_left)
            moves << diag_left
        end

        if enemy?(diag_right)
            moves << diag_right
        end

        moves.select {|move| board.valid_pos?(move)}
    end

    def to_s
        color == :black ? "♙" : "♟"
    end
end
