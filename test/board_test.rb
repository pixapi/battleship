require './test/test_helper'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test
  def test_it_has_a_class
    b = Board.new
    assert_instance_of Board, b
  end

  def test_rows_start_with_only_row_name_as_content
    b = Board.new
    assert_equal ["A", " ", " ", " ", " ", " ", " ", " ", " "], b.row_a
  end

  def test_it_has_top_bottom_margins
    b = Board.new
    assert_equal "==========", b.top_bottom_board
  end

  def test_it_has_four_columns
    b = Board.new
    assert_equal ". 1 2 3 4", b.columns
  end

  def test_it_has_four_rows
    b = Board.new
    assert_equal 4, b.rows.downcase.count('abcd')
  end

  def test_board_starts_with_no_ships
    b = Board.new
    refute b.rows.include?("S")
  end

  def test_board_starts_with_no_nils
    b = Board.new
    refute b.rows.nil?
  end

  def test_board_starts_with_no_misses
    b = Board.new
    refute b.rows.include?("M")
  end

  def test_board_starts_with_no_hits
    b = Board.new
    refute b.rows.include?("H")
  end

  def test_two_unit_coordinates_are_not_empty
    b = Board.new
    refute b.two_unit_valid_places.empty?
  end

  def test_three_unit_coordinates_are_not_empty
    b = Board.new
   refute b.three_unit_valid_places.empty?
  end

  def test_two_unit_coordinates_are_not_nil
    b = Board.new
    refute b.two_unit_valid_places.nil?
  end

  def test_three_unit_coordinates_are_not_nil
    b = Board.new
    refute b.three_unit_valid_places.nil?
  end

  def test_two_unit_coordinates_respect_vertical_limit
    b = Board.new
    refute b.two_unit_valid_places.join.include?("E")
  end

  def test_three_unit_coordinates_respect_vertical_limit
    b = Board.new
    refute b.three_unit_valid_places.join.include?("E")
  end

  def test_two_unit_coordinates_respect_horizontal_limit
    b = Board.new
    refute b.two_unit_valid_places.join.include?("5")
  end

  def test_three_unit_coordinates_respect_horizontal_limit
    b = Board.new
    refute b.three_unit_valid_places.join.include?("5")
  end

  def test_gets_middle_position
    b = Board.new
    b.get_middle_coordinate("A4 C4")
    assert_equal ["A4", "B4", "C4"], b.h
  end

  def test_gets_another_middle_position
    b = Board.new
    b.get_middle_coordinate("B1 B3")
    assert_equal ["B1", "B2", "B3"], b.e
  end

  def test_if_position_in_board
    b = Board.new
    b.two_unit_valid_places
    assert b.positions.include?("A3")
  end

  def test_if_another_position_on_board
    b = Board.new
    b.two_unit_valid_places
    refute b.positions.include?("F2")
  end
end
