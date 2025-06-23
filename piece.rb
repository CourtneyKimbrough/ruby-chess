require_relative 'board'

class Piece
  attr_reader :color, :symbol

  SYMBOLS = {
    'Pawn'   => { 'black' => "\u2659", 'white' => "\u265F" },
    'Rook'   => { 'black' => "\u2656", 'white' => "\u265C" },
    'Knight' => { 'black' => "\u2658", 'white' => "\u265E" },
    'Bishop' => { 'black' => "\u2657", 'white' => "\u265D" },
    'Queen'  => { 'black' => "\u2655", 'white' => "\u265B" },
    'King'   => { 'black' => "\u2654", 'white' => "\u265A" }
  }

  def initialize(color)
    @color = color
    @symbol = SYMBOLS[self.class.name][color]
  end

  def enemy?(other_piece)
    other_piece.respond_to?(:color) && other_piece.color != self.color
  end

  def filter_friendly_moves(moves, board)
    moves.reject do |row, col|
      target = board.grid[row][col]
      target.respond_to?(:color) && target.color == self.color
    end
  end
end
