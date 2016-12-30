require './lib/messages'
require './lib/board'
require './lib/game_setup'
require 'pry'
require './lib/player_setup'

class Battleship
  include Messages

  def intro
    puts Messages.welcome
  end

  def user_menu
    puts Messages.menu
  end

  def user_enter_menu
    @input_menu = gets.downcase.chomp
    #we can call next method and pass input_menu as argument
  end

  def follow_menu_option
    if @input_menu == "p" || @input_menu == "play"
      start_game
    elsif @input_menu == "i" || @input_menu == "instructions"
      instructions
    elsif @input_menu == "q" || @input_menu == "quit"
      quit
    else
      user_menu
    end
  end

  def instructions
    puts Messages.instructions
    #send user to user_menu
  end

  def quit
    puts Messages.bye
  end

  def start_game
    @gs = GameSetup.new.two_unit_placement
  end

  def computer_ships_set
    puts Messages.place_ships
  end

  def invite_player_set_two_unit
    puts Messages.two_unit_ship
  end

  def player_enter_two_unit
    input_two_unit = gets.downcase.chomp
    evaluate player_two_unit(input_two_unit)
  end

  def evaluate_player_two_unit(input_two_unit)
    @ps = PlayerSetup.new
    if @ps.two_unit_valid?(input_two_unit) == false
      puts Messages.invalid_input
      invite_player_set_two_unit
    else
      invite_player_set_three_unit
    end
  end

  def invite_player_set_three_unit
    puts Messages.three_unit_ship
  end

  def player_enter_three_unit
    input_three_unit = gets.downcase.chomp
    evaluate player_three_unit(input_three_unit)
  end

  def evaluate_player_three_unit(input_three_unit)
    if @ps.three_unit_valid?(input_three_unit) == false
      puts Messages.invalid_input
      invite_player_set_three_unit
    else
      #send to next step
    end
  end

  #COMPUTER SHIPS SET, PLAYER SHIPS SET

  def display_empty_board
    puts Board.new.empty_board
  end
end

# def display_player_progress
#   @board.player_progress
# end
#
# def display_computer_progress
#   @board.computer_progress
# end

# def end_game_message
#   if @grid_player.empty?
#     puts Messages::CONGRATS
#   else @grid_player.empty?
#     puts Messages::SORRY
#   end
#   final_message
# end
#
# def final_message
#   puts Messages.tries
#   puts Messages.time
# end

# b = Battleship.new
# b.display_board
