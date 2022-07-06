module Stepable

    def available_moves
        all_moves = []
        move_dirs.each do |dir|
            row, col = dir
            current_row, current_col = self.position
            # current_row += row
            # current_col += col
            current_position = [current_row + row, current_col + col]
    
            next unless board.valid_pos?(current_position)

            if board.empty?(current_position)
                all_moves << current_position
            elsif enemy?(current_position)
                all_moves << current_position
            end
        end
        all_moves
    end
end