require './lib/board'
require 'pry'

class ShipSetup #maybe module and self methods
  attr_reader :row_a,
              :row_b,
              :row_c,
              :row_d,


  def initialize
    @board = Board.new
    @row_a = @board.row_a
    @row_b = @board.row_b
    @row_c = @board.row_c
    @row_d = @board.row_d
  end

  def prepare_to_place_board(ship_two, ship_three)
    ships = ship_two + ship_three
    ships.each do |position|
      letter = position[0]
      n = position[1].to_i
      place_computer_ships_board(letter, n)
    end
  end

  def place_computer_ships_board(letter, n)
    if letter == "A"
      check_row_a(n)
    elsif letter == "B"
      check_row_b(n)
    elsif letter == "C"
      check_row_c(n)
    elsif letter == "D"
      check_row_d(n)
    end
  end

  def check_row_a(n)
    @row_a[n+1] = "S" if n == 1
    @row_a[n*2] = "S" if n > 1
  end

  def check_row_b(n)
    @row_b[n+1] = "S" if n == 1
    @row_b[n*2] = "S" if n > 1
  end

  def check_row_c(n)
    @row_c[n+1] = "S" if n == 1
    @row_c[n*2] = "S" if n > 1
  end

  def check_row_d(n)
    @row_d[n+1] = "S" if n == 1
    @row_d[n*2] = "S" if n > 1
  end
end
