

class Knight < Piece

    def symbol
        "Kn"
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