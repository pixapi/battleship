require './lib/board'
require './lib/ship_setup'
require 'pry'

class GameSetup
  attr_accessor :two_unit_ai,
                :three_unit_ai,
                :ai_ships,
                :ss

  def initialize
    @ai_ships = []
    @b = Board.new
    @ss = ShipSetup.new
  end

  def two_unit_placement
    @two_unit_ai = @b.two_unit_valid_places.sample(7).sample.split(" ")
    @ai_ships << two_unit_ai
    three_unit_placement
  end

  def three_unit_placement
    three_unit_computer = @b.three_unit_valid_places.sample(7).sample
    @three_unit_ai = @b.get_middle_coordinate(three_unit_computer)
    compare_two_ships_positions
  end

  def compare_two_ships_positions
    common_elements = @two_unit_ai & @three_unit_ai
    if common_elements.count > 0
      three_unit_placement
    end
    @ai_ships << @three_unit_ai
    place_ai_ships_on_board
  end

  def place_ai_ships_on_board
    @ss.prepare_to_place_board(@two_unit_ai, @three_unit_ai)
    display_ai_ships_board
  end

  def display_ai_ships_board #NOT SURE I WILL NEED THIS, these variables have no attr_reader
    @grid_ships_ai = @ss.row_a + @ss.row_b + @ss.row_c + @ss.row_d
    @ai_ships_row_a = @ss.row_a
    @ai_ships_row_b = @ss.row_b
    @ai_ships_row_c = @ss.row_c
    @ai_ships_row_d = @ss.row_d
    "Computer ships set on board"
  end
end

# gs = GameSetup.new
# p gs.two_unit_placement
# p gs.two_unit_ai
# p gs.three_unit_placement
# p gs.three_unit_ai
# p gs.ai_ships
# p gs.place_ai_ships_on_board #method will only display last element
