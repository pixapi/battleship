require './test/test_helper'
require './lib/battle'

class GameSetupTest < Minitest::Test
  def test_it_has_a_class
    bt = Battle.new
    assert_instance_of Battle, bt
  end

  # def test_computer_tries_starts_at_zero
  #   bt = Battle.new
  #   assert_equal 0, bt.computer_tries
  # end
  #
  # def test_computer_answers_start_empty
  #   bt = Battle.new
  #   assert_equal [], bt.computer_answers
  # end

  # def test_player_tries_starts_at_zero
  #   skip
  #   set_up
  #   assert_equal 0, p.player_tries
  # end
  #
  # def test_player_answers_start_empty
  #   skip
  #   p = PlayerSetup.new
  #   assert_equal [], p.player_answers
  # end
end
