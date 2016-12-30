require './lib/board'
require './lib/messages'
require 'pry'

class PlayerSetup
  include Messages
  attr_reader :player_ships,
              :two_unit_player

  def initialize
    @player_ships = []
    @board = Board.new
  end

  def two_unit_valid?(two_unit_input)
    if @board.two_unit_positions.include?(two_unit_input) == false
      false
    else
      @player_ships << two_unit_input
      @two_unit_player = two_unit_input.split(" ")
      "Two_unit_successfully_evaluated"
    end
  end

  def three_unit_valid?(three_unit_input)
    if @board.three_unit_positions.include?(three_unit_input) == false
      false
    else
      prepare_coordinates_to_check_use(three_unit_input)
    end
  end

  def prepare_coordinates_to_check_use(three_unit_input)
    all_sequence = @board.get_middle_coordinate(three_unit_input)
    evaluate_coordinates_use(all_sequence)
  end

  def evaluate_coordinates_use(all_sequence, three_unit_input)
    common_elements = @two_unit_player & all_sequence
    if common_elements.count > 0
      puts Messages.used_coordinates
    else
      @player_ships << three_unit_input
      @three_unit_player = all_sequence
      "Three_unit_successfully_evaluated"
    end
  end

  # def save_player_ship_positions(row_a, row_b, row_c, row_d)
  #   @row_a_ship_player = row_a
  #   @row_b_ship_player = row_b
  #   @row_c_ship_player = row_c
  #   @row_d_ship_player = row_d
  #   @grid_ships_player = row_a + row_b + row_c + row_d
  # end
  #
  # def place_player_ships_board
  #   game = Game.new
  #   game.prepare_to_place_board(@player.two_unit_player, @player.three_elements_player)
  #   p @board_player_ships = game.display_board_with_ships
  #   @player.save_player_ship_positions(game.row_a, game.row_b, game.row_c, game.row_d)
  #   # display_empty_board
  # end
end
