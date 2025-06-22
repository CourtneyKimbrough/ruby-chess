class Pawn
  attr_accessor :position, :symbol
  attr_reader :color

  def initialize(position, color)
    @position = position
    @color = color
    if @color == 'white'
      @symbol = "\u2659"
    else
      @symbol = "\u265F"
    end
  end

  def moves
    
  end
end
