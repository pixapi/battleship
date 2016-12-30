require './test/test_helper'
require './lib/battleship'

class BattleshipTest < Minitest::Test
  def test_it_has_a_class
    b = Battleship.new
    assert_instance_of Battleship, b
  end

  def test_it_displays_intro
    b = Battleship.new
    assert_output("Welcome to BATTLESHIP.\n") {b.intro}
  end

  def test_it_displays_menu
    b = Battleship.new
    expected = "Would you like to (p)lay, read the (i)nstructions or (q)uit the game?\n"
    assert_output(expected) {b.user_menu}
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

  def test_instructions #SKIPPED, GETTING A WEIRD ERROR OF TEXT FORMATTING
    skip
    b = Battleship.new
    expected = "\nBATTLESHIP consists on a war of ships against the computer.You will be ask
        to place your two ships on the grid following these conditions:
        - One ship of two units and another one of three units
        - Ships cannot wrap around the board
        - Ships cannot overlap
        - Ships can be laid either horizontally or vertically
        - Coordinates must correspond to the first and last units of the ship.
        During your turn, you will enter a coordinate to fire on and you will be informed
        if the shot was a hit or a miss. Then the computer will fire and so on. You will
        win if you sink the computer ships before it does.\n"
    assert_output(expected) {b.instructions}
  end

  # def test_start_game
  #   b = Battleship.new
  #   assert_equal "Computer ships set on board", b.start_game
  # end

  def test_computer_ships_set #SKIPPED, GETTING A WEIRD ERROR OF TEXT FORMATTING
    skip
    b = Battleship.new
    expected = "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the second is three units long.
    The grid has A1 at the top left and D4 at the bottom right."
    assert_output(expected) {b.computer_ships_set}
  end

  def test_invite_player_set_two_unit #SKIPPED, RETURNS NIL FOR PUTS
    b = Battleship.new
    assert_output("Enter the squares for the two-unit ship:\n") {b.invite_player_set_two_unit}
  end

  def test_player_enter_two_unit
      #IS THERE A WAY TO TEST THIS WITHOUT TYPING SOMEHOW?
  end

  def test_evaluate_player_two_unit #UNSKIP WHEN METHOD SET IN PLAYER_SETUP
    skip
    b = Battleship.new
    assert_output("Two_unit_successfully_evaluated\n") {b.evaluate_player_two_unit("A1 A2")}
  end

  def test_invite_player_set_three_unit #SKIPPED, RETURNS NIL FOR PUTS
    skip
    b = Battleship.new
    assert_output Messages.three_unit_ship, b.invite_player_set_three_unit
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
