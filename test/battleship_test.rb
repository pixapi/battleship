require './test/test_helper'
require './lib/battleship'

class BattleshipTest < Minitest::Test
  def test_it_has_a_class
    b = Battleship.new
    assert_instance_of Battleship, b
  end

  def test_it_displays_intro #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_equal Messages.welcome, b.intro
  end

  def test_it_displays_menu #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_equal Messages.menu, b.user_menu
  end

  def test_user_menu_input
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

  def test_instructions #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_equal Messages.instructions, b.instructions
  end

  def test_start_game
    b = Battleship.new
    assert_equal "Computer ships set", b.start_game
  end

  def test_computer_ships_set #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_equal Messages.place_ships, b.computer_ships_set
  end

  def test_invite_player_set_two_unit #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_equal Messages.two_unit_ship, b.invite_player_set_two_unit
  end

  def test_player_enter_two_unit
      #IS THERE A WAY TO TEST THIS WITHOUT TYPING SOMEHOW?
  end

  def test_evaluate_player_two_unit #UNSKIP WHEN METHOD SET IN PLAYER_SETUP
    skip
    b = Battleship.new
    assert_equal "Two_unit_successfully_evaluated", b.evaluate_player_two_unit("A1 A2")
  end

  def test_invite_player_set_three_unit #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_equal Messages.three_unit_ship, b.invite_player_set_three_unit
  end

  def test_player_enter_three_unit
      #IS THERE A WAY TO TEST THIS WITHOUT TYPING SOMEHOW?
  end

  def test_evaluate_player_three_unit #UNSKIP WHEN METHOD SET IN PLAYER_SETUP
    skip
    b = Battleship.new
    assert_equal "Three_unit_successfully_evaluated", b.evaluate_player_three_unit("C1 C3")
  end

  def test_it_can_display_empty_board #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_equal Board.new.empty_board, b.display_empty_board
  end
end
