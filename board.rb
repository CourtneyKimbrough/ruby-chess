require_relative 'piece'
require_relative 'pieces/rook'
require_relative 'pieces/bishop'
require_relative 'pieces/knight'
require_relative 'pieces/queen'
require_relative 'pieces/king'
require_relative 'pieces/pawn'


class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(8) {Array.new(8, 'X')}
    @grid[0][0] = Rook.new('black')
    @grid[0][1] = Knight.new('black')
    @grid[0][2] = Bishop.new('black')
    @grid[0][3] = King.new('black')
    @grid[0][4] = Queen.new('black')
    @grid[0][5] = Bishop.new('black')
    @grid[0][6] = Knight.new('black')
    @grid[0][7] = Rook.new('black')

    for num in (0..7)
      @grid[1][num] = Pawn.new('black')
    end

    @grid[7][0] = Rook.new('white')
    @grid[7][1] = Knight.new('white')
    @grid[7][2] = Bishop.new('white')
    @grid[7][3] = King.new('white')
    @grid[7][4] = Queen.new('white')
    @grid[7][5] = Bishop.new('white')
    @grid[7][6] = Knight.new('white')
    @grid[7][7] = Rook.new('white')

    for num in (0..7)
      @grid[6][num] = Pawn.new('white')
    end
  end

  def display
    print "   "
    ('A'..'H').each do |let|
      print let
      print " "
    end
    puts ""
    puts ""
    @grid.each_with_index do |row, index|
      print (index - 8).abs
      print "  "
      row.each do |ele|
        if !ele.is_a?(String)
          print ele.symbol
          print " "
        else
          print ele
          print " "
        end
      end
      puts ""
    end
    puts ""
  end
end