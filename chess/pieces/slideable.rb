module Slideable
    def available_moves
        all_moves = []
        move_dirs.each do |dir|
            row, col = dir
            current_row, current_col = position
            loop do
                current_row += row
                current_col += col
                current_position = [current_row, current_col]
                if !board.valid_pos?(current_position)
                    break
                end
                if board.empty?(current_position)
                    all_moves << current_position
                end
                if enemy?(current_position)
                    all_moves << current_position
                    break
                end
            end
        end
        all_moves
    end
end
