class King
  attr_accessor :symbol
  attr_reader :color

  def initialize(color)
    @color = color
    if @color == 'black'
      @symbol = "\u2654"
    else
      @symbol = "\u265A"
    end
  end

  def moves
    
  end
end
