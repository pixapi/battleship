# require './lib/game_setup'

class ShipSetup #maybe module and self methods
  def initialize
    @board = Board.new
    @row_a = @board.row_a
    @row_b = @board.row_b
    @row_c = @board.row_c
    @row_d = @board.row_d
  end

  def check_row_a(position, letter, n)
    @row_a[n+1] = "S" if n == 1
    @row_a[n*2] = "S" if n > 1
  end

  def check_row_b(position, letter, n)
    @row_b[n+1] = "S" if n == 1
    @row_b[n*2] = "S" if n > 1
  end

  def check_row_c(position, letter, n)
    @row_c[n+1] = "S" if n == 1
    @row_c[n*2] = "S" if n > 1
    end
  end

  def check_row_d(position, letter, n)
    @row_d[n+1] = "S" if n == 1
    @row_d[n*2] = "S" if n > 1
  end
end
