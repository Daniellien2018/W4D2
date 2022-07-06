class Display
    attr_reader :board
    def initialize(board)
        @board = board
    end
    
    def render
        8.times do |row|
            puts "---------------"
            8.times do |col|
                piece = board[[row, col]]
                print "#{board[[row, col]]} "
            end
            puts ""
        end
        puts "---------------"
    end
end