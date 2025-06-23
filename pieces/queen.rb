require_relative '../piece'

class Queen < Piece
  attr_accessor :symbol
  attr_reader :color

  def initialize(color)
    @color = color
    if @color == 'black'
      @symbol = "\u2655"
    else
      @symbol = "\u265B"
    end
  end

  def moves
    
  end
end
