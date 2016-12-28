module Messages
  def self.welcome
    "Welcome to BATTLESHIP."
  end

  def self.menu
    "Would you like to (p)lay, read the (i)nstructions or (q)uit the game?"
  end

  def self.instructions
    "BATTLESHIP consists on a war of ships against the computer.You will be ask
    to place your two ships on the grid following these conditions:
    - One ship of two units and another one of three units
    - Ships cannot wrap around the board
    - Ships cannot overlap
    - Ships can be laid either horizontally or vertically
    - Coordinates must correspond to the first and last units of the ship.
    During your turn, you will enter a coordinate to fire on and you will be informed
    if the shot was a hit or a miss. Then the computer will fire and so on. You will
    win if you sink the computer ships before it does."
  end

  def self.bye
    "Bye-bye. Hope you come back soon."
  end

  def self.place_ships
    "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the second is three units long.
    The grid has A1 at the top left and D4 at the bottom right."
  end

  def self.two_unit_ship
    "Enter the squares for the two-unit ship:"
  end

  def self.three_unit_ship
    "Enter the squares for the three-unit ship:"
  end

  def self.used_coordinates
    "You have used one or more points of these coordinates before. Please enter new ones in the A1-D4 range."
  end

  def self.invalid_input
    "You have entered an invalid coordinate. Columns are A-D and rows 1-4."
  end

  def self.shoot
    "Enter the coordinates to shoot at enemy's ships"
  end

  def self.miss
    "Your shot miss the enemy's ships."
  end

  def self.hit
    "Your shot hit an enemy's ship."
  end

  def self.change_turn
    "Please press Enter to continue."
  end

  def self.computer_shoot_miss(coordinates)
    "The computer shoot at #{coordinates} and miss your ships."
  end

  def self.computer_shoot_hit(coordinates)
    "The computer shoot at #{coordinates} and hit one of your ships."
  end

  def self.player_sunk_ship
    "You sunk an enemy ship."
  end

  def self.computer_sunk_ship
    "The computer sunk one of your ships."
  end

  def self.player_sunk_fleet
    "You sunk the enemy's fleet."
  end

  def self.computer_sunk_fleet
    "The computer sunk your fleet."
  end

  def self.congrats
    "Congratulations, you won the game."
  end

  def self.sorry
    "Sorry, you lost the game."
  end

  def self.tries(tries)
    "The winner used #{tries} attempts to win the game."
  end

  def self.time(elapsed_time)
    "The game lasted #{elapsed_time}."
  end
end
