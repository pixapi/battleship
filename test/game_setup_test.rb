require './test/test_helper'
require './lib/game_setup'
require './lib/board'
require 'pry'

class GameSetupTest < Minitest::Test
  def test_it_has_a_class
    gs = GameSetup.new
    assert_instance_of GameSetup, gs
  end

  def test_computer_two_unit_ship_is_not_nil
    gs = GameSetup.new
    gs.two_unit_placement
    refute gs.two_unit_ai.nil?
  end

  def test_computer_three_unit_is_not_nil
    gs = GameSetup.new
    gs.two_unit_placement
    gs.three_unit_placement
    refute gs.three_unit_ai.nil?
  end

  def test_two_unit_are_random_coordinates
    gs = GameSetup.new
    gs.two_unit_placement
    place_one = gs.two_unit_ai
    gs.two_unit_placement
    place_two = gs.two_unit_ai

    refute_equal place_one, place_two
  end

  def test_three_unit_are_random_coordinates
    gs = GameSetup.new
    gs.two_unit_placement
    gs.three_unit_placement
    place_one = gs.three_unit_ai
    gs.two_unit_placement
    gs.three_unit_placement
    place_two = gs.three_unit_ai

    refute_equal place_one, place_two
  end

  def test_two_unit_not_equal_three_unit
    gs = GameSetup.new
    gs.two_unit_placement
    two_unit = gs.two_unit_ai
    gs.three_unit_placement
    three_unit = gs.three_unit_ai

    refute_equal two_unit, three_unit
  end

  def test_computer_two_unit_are_valid_coordinates
    gs = GameSetup.new
    b = Board.new
    gs.two_unit_placement
    assert b.two_unit_valid_places.include?(gs.two_unit_ai.join(" "))
  end

  def test_computer_three_unit_are_valid_coordinates
    gs = GameSetup.new
    b = Board.new
    gs.two_unit_placement
    gs.three_unit_placement
    gs.three_unit_ai.delete_at(1)
    assert b.three_unit_valid_places.include?(gs.three_unit_ai.join(" ").delete(","))
  end

  def test_computer_three_unit_has_three_board_positions
    gs = GameSetup.new
    gs.two_unit_placement
    gs.three_unit_placement
    assert 3, gs.three_unit_ai.count
  end

  def test_collection_of_computer_ships
    gs = GameSetup.new
    gs.two_unit_placement
    gs.three_unit_placement
    assert 2, gs.ai_ships.count
  end

#GETTING undefined method `+' for nil:NilClass
  # def test_it_places_ships_on_board
  #   gs = GameSetup.new
  #   ss = ShipSetup.new
  #   two_unit_ai = ["A1, A2"]
  #   three_unit_ai = ["B1", "C1", "D1"]
  #   gs.place_ai_ships_on_board
  #   assert_equal "S", ss.row_a
  # end

  # def test_it_saves_computer_ship_board
  #   skip
  #   gs = GameSetup.new
  #   gs.place_ai_ships_on_board(["C3, C4"], ["A1", "B1", "C1"])
  #   assert_equal "S", ss.ai_ships_row_c[6]
  # end
end
