require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
    include stepable
    def symbol
        "Kn".colorize(color)
    end

    protected

    def move_diffs
        [ 
        [1,2],
        [2,1],
        [2,-1],
        [1,-2],

        [-1,-2],
        [-2,-1],
        [-2,1],
        [-1,2]
        ]
    end
end