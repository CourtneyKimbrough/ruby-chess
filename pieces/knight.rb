class Knight
  attr_accessor :symbol
  attr_reader :color

  def initialize(color)
    @color = color
    if @color == 'black'
      @symbol = "\u2658"
    else
      @symbol = "\u265E"
    end
  end

  def moves
    
  end
end
