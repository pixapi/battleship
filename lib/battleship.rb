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

  def display_board
    puts Board.new.empty_board
  end
end

# b = Battleship.new
# b.display_board
