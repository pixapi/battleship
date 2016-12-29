require './test/test_helper'
require './lib/player_setup'
require 'pry'

class PlayerSetupTest < Minitest::Test
  def test_it_has_a_class
    ps = PlayerSetup.new
    assert_instance_of PlayerSetup, ps
  end
end
