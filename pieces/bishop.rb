class Bishop
  attr_accessor :position, :symbol
  attr_reader :color

  def initialize(position, color)
    @position = position
    @color = color
    if @color == 'white'
      @symbol = "\u2657"
    else
      @symbol = "\u265D"
    end
  end

  def moves
    
  end
end

