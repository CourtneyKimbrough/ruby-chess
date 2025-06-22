class Knight
  attr_accessor :position, :symbol
  attr_reader :color

  def initialize(position, color)
    @position = position
    @color = color
    if @color == 'white'
      @symbol = "\u2658"
    else
      @symbol = "\u265E"
    end
  end

  def moves
    
  end
end
