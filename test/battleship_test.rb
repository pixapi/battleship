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
    # def test_it_evaluates_play_command
    #   input = "p"
    #   assert input == "p", Evaluator.play(input)
    # end
    # def test_it_evaluates_instructions_command
    # input = "i"
    # assert input == "i", Evaluator.instructions(input)
    # end
    # def test_it_evaluates_quit_command
    # input = "q"
    # assert input == "q", Evaluator.quit(input)
    # end
    # def test_it_follows_commands
    # b = Battleship.new
    # assert_equal Messages.say_bye, b.follow_command("q")
    # end
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

  def test_it_can_display_empty_board
    b = Battleship.new
    assert_equal Board.new.empty_board, b.display_empty_board
  end
end
