require_relative "./lib/piece.rb"
require_relative "./lib/board.rb"
require_relative "./lib/display.rb"

require_relative "./lib/piece.rb"


# b = Board.start_chess
# board = Display.new(b)
# puts board.render

b = Board.new
b[[0,0]] = Rook.new(b, [0,0] :black)
b[[0,0]].



piece = b[[0,0]]
puts piece.enemy?([0,1])
puts piece.enemy?([0,0])
