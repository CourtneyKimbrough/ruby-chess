class King
  attr_accessor :position, :symbol
  attr_reader :color

  def initialize(position, color)
    @position = position
    @color = color
    if @color == 'white'
      @symbol = "\u2654"
    else
      @symbol = "\u265A"
    end
  end

  def moves
    
  end
end
