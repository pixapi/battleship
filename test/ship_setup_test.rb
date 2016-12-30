require './test/test_helper'
require './lib/ship_setup'
require 'pry'

class ShipSetupTest < Minitest::Test
  def test_it_has_a_class
    ss = ShipSetup.new
    assert_instance_of ShipSetup, ss
  end

  def test_gets_original_row_a_from_board
    ss = ShipSetup.new
    b = Board.new #if we display row, no need for this line
    assert_equal b.row_a, ss.row_a
    # assert_equal ["A", " ", " ", " ", " ", " ", " ", " ", " "], ss.row_a
  end

  def test_gets_original_row_b_from_board
    ss = ShipSetup.new
    b = Board.new
    assert_equal b.row_b, ss.row_b
    # assert_equal ["B", " ", " ", " ", " ", " ", " ", " ", " "], ss.row_b
  end

  def test_gets_original_row_c_from_board
    ss = ShipSetup.new
    b = Board.new
    assert_equal b.row_c, ss.row_c
    # assert_equal ["C", " ", " ", " ", " ", " ", " ", " ", " "], ss.row_c
  end

  def test_gets_original_row_d_from_board
    ss = ShipSetup.new
    b = Board.new
    assert_equal b.row_d, ss.row_d
    # assert_equal ["D", " ", " ", " ", " ", " ", " ", " ", " "], ss.row_d
  end

  def test_prepares_ships_to_be_placed
    ss = ShipSetup.new
    ss.prepare_to_place_board(["C1", "C2"],["B4", "C4", "D4"])
    assert_equal "S", ss.row_c[2]
  end

  def test_prepares_other_ships_to_be_placed
    ss = ShipSetup.new
    ss.prepare_to_place_board(["D3", "D4"],["A1", "A2", "A3"])
    assert_equal "S", ss.row_d[6]
  end

  def test_detects_row_to_place_ship
    ss = ShipSetup.new
    ss.place_computer_ships_board("A", 2)
    assert_equal "S", ss.row_a[4]
  end

  def test_detects_another_row_to_place_ship
    ss = ShipSetup.new
    ss.place_computer_ships_board("C", 1)
    assert_equal "S", ss.row_c[2]
  end

  def test_sets_ship_in_row_a
    ss = ShipSetup.new
    ss.check_row_a(1)
    assert_equal "S", ss.row_a[2]
  end

  def test_sets_ship_in_row_b
    ss = ShipSetup.new
    ss.check_row_b(2)
    assert_equal "S", ss.row_b[4]
  end

  def test_sets_ship_in_row_c
    ss = ShipSetup.new
    ss.check_row_c(3)
    assert_equal "S", ss.row_c[6]
  end

  def test_sets_ship_in_row_d
    ss = ShipSetup.new
    ss.check_row_d(4)
    assert_equal "S", ss.row_d[8]
  end
end
