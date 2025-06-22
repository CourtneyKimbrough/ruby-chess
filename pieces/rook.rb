class Rook
  attr_accessor :position, :symbol
  attr_reader :color

  def initialize(position, color)
    @position = position
    @color = color
    if @color == 'white'
      @symbol = "\u2656"
    else
      @symbol = "\u265C"
    end
  end

  def moves
    
  end
end

