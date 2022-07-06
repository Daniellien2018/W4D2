require_relative "./lib/bishop.rb"
require_relative "./lib/board.rb"
require_relative "./lib/display.rb"
require_relative "./lib/king.rb"
require_relative "./lib/knight.rb"
require_relative "./lib/pawn.rb"
require_relative "./lib/queen.rb"
require_relative "./lib/rook.rb"


b = Board.start_chess
board = Display.new(b)
puts board.render



