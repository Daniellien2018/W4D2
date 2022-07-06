class Bishop
    def initialize(color)
        @color = color
    end

    def to_s
        color == :black ? "♗" : "♝"
    end

    def move_dirs
        [[1,1],[1,-1],[-1,-1],[-1,1]]
    end
end