require_relative '../piece'

class Rook < Piece
  
  def valid_moves(startrow, startcol, board)
    @valid = []

    # Move left
    (startcol - 1).downto(0) do |num|
      target = board.grid[startrow][num]
      if target.is_a?(String)
        @valid.push([startrow, num])
      elsif self.enemy?(target)
        @valid.push([startrow, num])
        break
      else
        break
      end
    end

    # Move right
    (startcol + 1).upto(7) do |num|
      target = board.grid[startrow][num]
      if target.is_a?(String)
        @valid.push([startrow, num])
      elsif self.enemy?(target)
        @valid.push([startrow, num])
        break
      else
        break
      end
    end

    # Move down
    (startrow + 1).upto(7) do |num|
      target = board.grid[num][startcol]
      if target.is_a?(String)
        @valid.push([num, startcol])
        puts @vaild
      elsif self.enemy?(target)
        @valid.push([num, startcol])
        puts @vaild
        break
      else
        break
      end
    end
      
    # Move up 
    (startrow - 1).downto(0) do |num|
      target = board.grid[num][startcol]
      if target.is_a?(String)
        @valid.push([num, startcol])
        puts @vaild
      elsif self.enemy?(target)
        @valid.push([num, startcol])
        puts @vaild
        break
      else
        break
      end
    end

    return @valid
  
  end
end

