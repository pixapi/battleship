require './test/test_helper'
require './lib/game'

class GameTest < Minitest::Test
  def test_it_has_a_class
    g = Game.new
    assert_instance_of Game, g
  end

  def test_two_unit_coordinates_are_not_empty
    g = Game.new
    refute g.two_unit_valid_places.empty?
  end

  def test_three_unit_coordinates_are_not_empty
    g = Game.new
   refute g.three_unit_valid_places.empty?
  end

  def test_two_unit_coordinates_are_not_nil
    g = Game.new
    refute g.two_unit_valid_places.nil?
  end

  def test_three_unit_coordinates_are_not_nil
    g = Game.new
    refute g.three_unit_valid_places.nil?
  end

  def test_two_unit_coordinates_respect_vertical_limit
    g = Game.new
    refute g.two_unit_valid_places.join.include?("E")
  end

  def test_three_unit_coordinates_respect_vertical_limit
    g = Game.new
    refute g.three_unit_valid_places.join.include?("E")
  end

  def test_two_unit_coordinates_respect_horizontal_limit
    g = Game.new
    refute g.two_unit_valid_places.join.include?("5")
  end

  def test_three_unit_coordinates_respect_horizontal_limit
    g = Game.new
    refute g.three_unit_valid_places.join.include?("5")
  end
end
