require './lib/board'
require './lib/ship_setup'
require 'pry'

class GameSetup
  attr_reader :two_unit_ai,
              :three_unit_ai
              :ai_ships

  def initialize
    @ai_ships = []
    @b = Board.new
    @ss = ShipSetup.new
  end

  def two_unit_placement
    two_valid_positions = @b.two_unit_valid_places
    @two_unit_ai= two_valid_positions.sample(7).sample.split(" ")
    @ai_ships << two_unit_ai
  end

  def three_unit_placement
    three_valid_positions = @b.three_unit_valid_places
    three_unit_computer = three_valid_positions.sample(7).sample
    @three_unit_ai = get_middle_coordinate(three_unit_computer)
    common_elements = @two_unit_ai & @three_unit_ai
    if common_elements.count > 0
      three_unit_placement
    end
    @ai_ships << @three_unit_ai
  end

  def get_middle_coordinate(coordinates)
    a = coordinates
    b = coordinates.chars
    if b[-2] == b[0]
      c = b[-1].to_i - b[1].to_i
      d = b[0] + (b[1].to_i + 1).to_s
      e = a.split(" ").insert(1, d)
    else
      f = b[0].next
      g = f + b[1]
      h = a.split(" ").insert(1, g)
    end
  end

  def positions #THIS PROVIDES ALL VALID POSITIONS OF BOARD
    @b.three_unit_valid_places.map do |position|
      position.split(" ")
    end.flatten.uniq
  end

  def prepare_to_place_board
    ships = @two_unit_ai + @three_unit_ai
    ships.each do |position|
      letter = position[0]
      n = position[1].to_i
      place_computer_ships_board(position, letter, n)
    end
  end

  def place_computer_ships_board(positon, letter, n)
    if letter == "A"
      @row_a_ai = @ss.check_row_a(position, letter, n)
    elsif letter == "B"
      @row_b_ai = @ss.check_row_b(position, letter, n)
    elsif letter == "C"
      @row_c_ai = @ss.check_row_c(position, letter, n)
    elsif letter == "D"
      @row_d_ai = @ss.check_row_d(position, letter, n)
    end
  end

  def ai_ships_board
    @grid_ships_ai = @row_a_ai + @row_b_ai + @row_c_ai + @row_d_ai
  end

end

# gs = GameSetup.new
# # gs.b.two_unit_valid_places
# # gs.b.three_unit_valid_places
# p gs.two_unit_placement
# p gs.two_unit_ai
# p gs.three_unit_placement
# p gs.three_unit_ai
