require './lib/board'
require 'pry'

class GameSetup
  attr_reader :two_unit_ai,
              :three_unit_ai
              :ai_ships

  def initialize
    @ai_ships = []
    @b = Board.new
  end

  def two_unit_placement
    @two_unit_ai= @b.two_unit_valid_places.sample(7).sample.split(" ")
    @ai_ships << two_unit_ai
  end

  def three_unit_placement
    three_unit_computer = @b.three_unit_valid_places.sample(7).sample
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

  def save_ai_ship_positions(row_a, row_b, row_c, row_d)
    @row_a_ship_player = row_a
    @row_b_ship_player = row_b
    @row_c_ship_player = row_c
    @row_d_ship_player = row_d
    @grid_ships_ai = row_a + row_b + row_c + row_d
  end

  def set_computer_ships
    @ai = Computer.new
    @ai.two_unit_placement
    @ai.three_unit_placement
    set_player_ships
  end

  def set_player_ships
    @player = Player.new
    save_empty_board
  end

  def place_computer_ships_board
    @game.prepare_to_place_board(@ai.two_elements_ai, @ai.three_elements_ai)
    p @board_ai_ships = @game.display_board_with_ships
    @ai.save_ai_ship_positions(@game.row_a, @game.row_b, @game.row_c, @game.row_d)
    place_player_ships_board
  end
end

gs = GameSetup.new
