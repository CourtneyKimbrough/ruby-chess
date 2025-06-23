
require_relative 'board'

class Play
  attr_accessor :board, :turn, :finished
  def initialize
    @board = Board.new
    @turn = 'white'
    @finished = false
    @possible_pos = ('A'..'H').flat_map do |letter|
      (1..8).map { |number| "#{letter}#{number}"}
    end
  end

  def convert_row(num)
    num = num.to_i
    (num - 8).abs
  end

  def convert_col(letter)
    letter.upcase.ord - 'A'.ord
  end

  def round
    @starting_position = ""
    @valid_move = []
    loop do
    #while !@possible_pos.include?(@starting_position) || @current_piece.nil? || @valid_move.empty? || @current_piece.color != @turn
      puts "#{@turn}, what is the position of the piece you would like to move?"
      @starting_position = gets.chomp
      @startcol = convert_col(@starting_position[0])
      @startrow = convert_row(@starting_position[1])
      @current_piece = board.grid[@startrow][@startcol]

      if !@possible_pos.include?(@starting_position) || @current_piece == 'X' ||  @current_piece.color != @turn
        puts "Invalid choice, please try again"
        next
      end

      @valid_move = @current_piece.valid_moves(@startrow, @startcol, @board)

      if @valid_move.empty?
        puts "This piece has no possible moves, please select a different piece"
        next
      end

      break
    end
    @ending_position = ""
    while !@possible_pos.include?(@ending_position) || @valid_move.nil? || !@valid_move.include?([@endrow, @endcol])
      puts "where would you like to move it?"
      @ending_position = gets.chomp
      @endcol = convert_col(@ending_position[0])
      @endrow = convert_row(@ending_position[1])
      if @valid_move.include?([@endrow, @endcol])
        board.grid[@endrow][@endcol] = @current_piece
        board.grid[@startrow][@startcol] = 'X'
      else 
        puts "invalid move"
      end
    end
    board.display
    @turn = @turn == 'white' ? 'black' : 'white'
  end
end

puts "Welcome to command line chess!"
my_game = Play.new
my_game.board.display
while !my_game.finished
  my_game.round
end