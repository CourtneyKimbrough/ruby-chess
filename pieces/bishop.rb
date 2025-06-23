class Bishop
  attr_accessor :symbol
  attr_reader :color

  def initialize(color)
    @color = color
    if @color == 'black'
      @symbol = "\u2657"
    else
      @symbol = "\u265D"
    end
  end

  def moves
    
  end
end

