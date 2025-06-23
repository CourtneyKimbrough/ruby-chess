
require_relative 'board'

class Play
  attr_accessor :board, :turn
  def initialize
    @board = Board.new
    @turn = 'White'
  end

  def convert_row(num)
    num = num.to_i
    (num - 8).abs
  end

  def convert_col(letter)
    letter.upcase.ord - 'A'.ord
  end

  def round
    puts "#{@turn}, what is the position of the piece you would like to move?"
    @starting_position = gets.chomp
    @startcol = convert_col(@starting_position[0])
    @startrow = convert_row(@starting_position[1])
    @current_piece = board.grid[@startrow][@startcol]
    puts "where would you like to move it?"
    @ending_position = gets.chomp
    @endcol = convert_col(@ending_position[0])
    @endrow = convert_row(@ending_position[1])
    valid_move = @current_piece.valid_moves(@startrow, @startcol, @board)
    print valid_move
    if valid_move.include?([@endrow, @endcol])
      board.grid[@endrow][@endcol] = @current_piece
      board.grid[@startrow][@startcol] = 'X'
    else 
      puts "invalid move
      "
    end
    board.display
  end
end

puts "Welcome to command line chess!"
my_game = Play.new
my_game.board.display
my_game.round