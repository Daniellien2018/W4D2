require_relative "board.rb"
require_relative "display"


# b = Board.start_chess
# board = Display.new(b)
# puts board.render

# b = Board.new
# b[[0,0]] = Rook.new(b, [0,0], :black)
# p b[[0,0]].available_moves



# piece = b[[0,0]]
# puts piece.enemy?([0,1])
# puts piece.enemy?([0,0])


b = Board.start_chess

board = Display.new(b)
b[[2,0]]=Pawn.new(board, [2, 0], :white)
p board.render




p b[[1,1]].available_moves
