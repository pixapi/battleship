require './lib/messages'
require './lib/board'
require 'pry'

class Battleship
  include Messages

  def intro
    Messages.welcome
  end

  def user_menu
    Messages.menu
  end

  def user_enter_menu
    @input_menu = gets.downcase.chomp
    #we can call next method and pass input_menu as argument
  end

  def follow_menu_option
    if @input_menu == "p" || @input_menu == "play"
      play
    elsif @input_menu == "i" || @input_menu == "instructions"
      instructions
    elsif @input_menu == "q" || @input_menu == "quit"
      quit
    else
      user_menu
    end
  end

  def play
    #send user to game, set computer ships and ask player ships
    #is it worth it to have this method here if we just send to another method?
  end

  def instructions
    puts Messages.instructions
    #send user to user_menu
  end

  def quit
    puts Messages.bye
  end

  def display_empty_board
    puts Board.new.empty_board
  end
end

# def set_computer_ships
#   @ai = Computer.new
#   @ai.two_unit_placement
#   @ai.three_unit_placement
#   set_player_ships
# end
#
# def set_player_ships
#   @player = Player.new
#   save_empty_board
# end

# def display_board_with_ships
#   @board.display_board
# end
#
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
