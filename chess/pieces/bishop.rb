require_relative 'piece'
require_relative 'slideable.rb'

class Bishop < Piece
    include Slideable
  
    def to_s
        color == :black ? "♗" : "♝"
    end

    def move_dirs
        [[1,1],[1,-1],[-1,-1],[-1,1]]
    end
end