require './test/test_helper'
require './lib/battleship'

#WE GET NILS FOR THE PUTS WHEN PRINTING MESSAGES IN BATTLESHIP.RB

class BattleshipTest < Minitest::Test
  def test_it_has_a_class
    b = Battleship.new
    assert_instance_of Battleship, b
  end

  def test_it_displays_intro
    b = Battleship.new
    assert_equal Messages.welcome, b.intro
  end

  def test_it_displays_intro
    b = Battleship.new
    assert_equal Messages.menu, b.user_menu
  end

  def test_user_input
    #IS THERE A WAY TO TEST THIS WITHOUT TYPING SOMEHOW?
  end

  def test_follow_menu_options
    #IS THERE A WAY TO TEST THIS WITHOUT TYPING SOMEHOW?
  end

  def test_play
    #WHAT TO TEST IF WE ONLY SEND USER SOMEWHERE?
  end

  def test_instructions
    b = Battleship.new
    assert_equal Messages.instructions, b.instructions
  end

  def test_user_quit
    b = Battleship.new
    assert_equal Messages.bye, b.quit
  end
end
