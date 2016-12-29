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

end
