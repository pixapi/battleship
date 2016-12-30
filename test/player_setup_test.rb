require './test/test_helper'
require './lib/player_setup'
require 'pry'

class PlayerSetupTest < Minitest::Test
  def test_it_has_a_class
    ps = PlayerSetup.new
    assert_instance_of PlayerSetup, ps
  end

  def test_player_ships_starts_empty
    ps = PlayerSetup.new
    assert_equal [], ps.player_ships
  end

  def test_it_rejects_invalid_two_unit_input
    ps = PlayerSetup.new
    refute ps.two_unit_valid?("A1 D1")
  end

  def test_it_validates_correct_two_unit_input
    ps = PlayerSetup.new
    assert ps.two_unit_valid?("A1 A2")
  end

  def test_adds_valid_two_unit_input_to_player_ships
    ps = PlayerSetup.new
    ps.two_unit_valid?("A1 A2")
    assert_equal ["A1 A2"], ps.player_ships
  end

  def test_adds_valid_two_unit_input_to_two_unit_player
    ps = PlayerSetup.new
    assert_nil ps.two_unit_player
    ps.two_unit_valid?("B2 C2")
    assert_equal ["B2", "C2"], ps.two_unit_player
  end

  def test_displays_validated_when_valid_two_unit_input
    ps = PlayerSetup.new
    expected = "Two_unit_successfully_evaluated"
    assert_equal expected, ps.two_unit_valid?("B2 C2")
  end


  def test_it_rejects_invalid_three_unit_input
    ps = PlayerSetup.new
    refute ps.two_unit_valid?("C3 E3")
  end


  # def test_it_validates_correct_three_unit_input
  #   ps = PlayerSetup.new
  #   assert ps.three_unit_valid?("A4 C4")
  # end

  # def test_adds_valid_three_unit_input_to_player_ships
  #   ps = PlayerSetup.new
  #   all_sequence = ["A1", "A2", "A3"]
  #   ps.three_unit_valid?("A1 A3")
  #   assert_equal ["A1 A3"], ps.player_ships
  # end
  #
  # def test_adds_valid_three_unit_input_to_three_unit_player
  #   skip
  #   ps = PlayerSetup.new
  #   assert_nil ps.two_unit_player
  #   ps.two_unit_valid?("B2 C2")
  #   assert_equal ["B2", "C2"], ps.two_unit_player
  # end
  # def test_displays_validated_when_valid_three_unit_input
  #   skip
  #   ps = PlayerSetup.new
  #   expected = "Two_unit_successfully_evaluated"
  #   assert_equal expected, ps.two_unit_valid?("B2 C2")
  # end

  def test_accepts_coordinates_when_not_used_before
    ps = PlayerSetup.new
    assert ps.evaluate_coordinates_use(["A1", "A2", "A3"], "A1 A3")
  end

  def test_rejects_coordinates_when_used_before
    skip
    ps = PlayerSetup.new
    refute
  end

  def test_two_unit_not_equal_three_unit
    skip
    ps = PlayerSetup.new
    two_unit = ps.two_unit_placement
    three_unit = ps.three_unit_placement

    refute_equal two_unit, three_unit
  end

  def converts_three_unit_coordinates_to_three_positions
    skip
    ps = PlayerSetup.new
    @input = "A1 A3"
    assert_equal ["A1", "A2", "A3"], ps.all_sequence
  end

  def test_it_evaluates_coordinate_use
    skip
    ps = PlayerSetup.new
    @input = "A1 A3"
    @two_elements_player = "B1 B2"
    assert_equal 0, ps.evaluate_coordinates_use.common_elements.count
  end

end
