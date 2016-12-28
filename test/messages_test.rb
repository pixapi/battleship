require './test/test_helper'
require './lib/messages'

class MessagesTest < Minitest::Test
  include Messages
  def test_it_welcomes_user
    assert_equal "Welcome to BATTLESHIP.", Messages.welcome
  end

  def test_it_displays_user_menu_options
    menu_message =   "Would you like to (p)lay, read the (i)nstructions or (q)uit the game?"
    assert_equal menu_message, Messages.menu
  end

  def test_it_display_game_instructions
    instructions = ("BATTLESHIP consists on a war of ships against the computer.You will be ask
    to place your two ships on the grid following these conditions:
    - One ship of two units and another one of three units
    - Ships cannot wrap around the board
    - Ships cannot overlap
    - Ships can be laid either horizontally or vertically
    - Coordinates must correspond to the first and last units of the ship.
    During your turn, you will enter a coordinate to fire on and you will be informed
    if the shot was a hit or a miss. Then the computer will fire and so on. You will
    win if you sink the computer ships before it does.")
    assert_equal instructions, Messages.instructions
  end

  def test_it_says_goodbye
    assert_equal "Bye-bye. Hope you come back soon.", Messages.bye
  end

  def test_it_asks_user_to_place_ships
    place_ships_message = "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the second is three units long.
    The grid has A1 at the top left and D4 at the bottom right."
    assert_equal place_ships_message, Messages.place_ships
  end

  def test_invites_user_place_two_unit_ship
    assert_equal "Enter the squares for the two-unit ship:", Messages.two_unit_ship
  end

  def test_invites_user_place_three_unit_ship
    assert_equal "Enter the squares for the three-unit ship:", Messages.three_unit_ship
  end

  def test_it_informs_when_used_coordinates
    used_coordinates = "You have used one or more points of these coordinates before. Please enter new ones in the A1-D4 range."
    assert_equal used_coordinates, Messages.used_coordinates
  end

  def test_it_informs_when_invalid_input
    invalid_input_message = "You have entered an invalid coordinate. Columns are A-D and rows 1-4."
    assert_equal invalid_input_message, Messages.invalid_input
  end

  def test_it_asks_user_to_shoot
    shoot_message = "Enter the coordinates to shoot at enemy's ships"
    assert_equal shoot_message, Messages.shoot
  end

  def test_it_informs_when_shot_is_a_miss
    assert_equal "Your shot miss the enemy's ships.", Messages.miss
  end

  def test_it_informs_when_shot_is_a_hit
    assert_equal "Your shot hit an enemy's ship.", Messages.hit
  end

  def test_it_changes_turn_with_enter
    assert_equal "Please press Enter to continue.", Messages.change_turn
  end

  def test_it_displays_computer_shot_when_misses
    miss_shot = "The computer shoot at A3 A4 and miss your ships."
    assert_equal miss_shot, Messages.computer_shoot_miss("A3 A4")
  end

  def test_it_displays_computer_shot_when_hits
    hit_shot = "The computer shoot at A3 A4 and hit one of your ships."
    assert_equal hit_shot, Messages.computer_shoot_hit("A3 A4")
  end

  def test_it_displays_when_player_sunk_a_ship
    sink_ship = "You sunk an enemy ship."
    assert_equal sink_ship, Messages.player_sunk_ship
  end

  def test_it_displays_when_computer_sunk_a_ship
    sink_ship = "The computer sunk one of your ships."
    assert_equal sink_ship, Messages.computer_sunk_ship
  end

  def test_it_displays_when_player_sunk_fleet
    sink_fleet = "You sunk the enemy's fleet."
    assert_equal sink_fleet, Messages.player_sunk_fleet
  end

  def test_it_displays_when_computer_sunk_fleet
    sink_fleet = "The computer sunk your fleet."
    assert_equal sink_fleet, Messages.computer_sunk_fleet
  end

  def test_it_congratulates_when_victory
    assert_equal "Congratulations, you won the game.", Messages.congrats
  end

  def test_it_says_sorry_when_defeat
    assert_equal "Sorry, you lost the game.", Messages.sorry
  end

  def test_it_indicates_number_of_attempts
    assert_equal "The winner used 7 attempts to win the game.", Messages.tries(7)
  end

  def test_it_indicates_game_elapsed_time
    elapsed_time = "4 minutes and 14 seconds"
    assert_equal "The game lasted 4 minutes and 14 seconds.", Messages.time(elapsed_time)
  end
end
