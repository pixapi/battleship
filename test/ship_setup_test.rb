require './test/test_helper'
require './lib/ship_setup'
require 'pry'

class ShipSetupTest < Minitest::Test
  def test_it_has_a_class
    ss = ShipSetup.new
    assert_instance_of ShipSetup, ss
  end
end
