class Queen
  attr_accessor :position, :symbol
  attr_reader :color

  def initialize(position, color)
    @position = position
    @color = color
    if @color == 'white'
      @symbol = "\u2655"
    else
      @symbol = "\u265B"
    end
  end

  def moves
    
  end
end
