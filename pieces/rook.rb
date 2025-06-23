class Rook
  attr_accessor :symbol
  attr_reader :color

  def initialize(color)
    @color = color
    if @color == 'black'
      @symbol = "\u2656"
    else
      @symbol = "\u265C"
    end
  end

  def moves
    
  end
end

