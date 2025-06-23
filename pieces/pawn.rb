require_relative '../board'

class Pawn
  attr_accessor :symbol
  attr_reader :color

  def initialize(color)
    @color = color
    if @color == 'black'
      @symbol = "\u2659"
    else
      @symbol = "\u265F"
    end
  end

  def valid_moves(startrow, startcol, board)
    @valid = []

    direction = self.color == 'white' ? -1 : 1
    start_row = self.color == 'white' ? 6 : 1

    one_step = [startrow + direction, startcol]
    two_step = [startrow + (2 * direction), startcol]
    diag_left_step = [startrow + direction, startcol - 1]
    diag_right_step = [startrow + direction, startcol - 1]
    # If it is a pawns first move
    if board.grid[one_step[0]][one_step[1]].is_a?(String)
      @valid.push(one_step)
    end

    if board.grid[two_step[0]][two_step[1]].is_a?(String)
      @valid.push(two_step)
    end

    if !board.grid[diag_left_step[0]][diag_left_step[1]].is_a?(String)
      @valid.push(diag_left_step)
    end

    if !board.grid[diag_right_step[0]][diag_right_step[1]].is_a?(String)
      @valid.push(diag_right_step)
    end

    return @valid
  
  end

end