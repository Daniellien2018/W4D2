class Pawn
    def initialize(color)
        @color = color
    end

    def to_s
        color == :black ? "♙" : "♟"
    end

    def move_dirs
        [[0,1]]
    end
end