class Battle
  def battle
    until @player.grid_ships_player.count("S") == 0 || @ai.grid_ships_ai.count("S") == 0
      @fire.player_ask_shot
      @fire.computer_shot
    end
    end_game_message
  end

  def initialize
    @player_shots = []
    @player_tries = 0
    @ai_shots = []
    @ai_tries = 0
  end

  def ask_enter_shot
    @input = gets.upcase.chomp
  end

  def player_ask_shot
    puts Messages::SHOOT
    player_fire
  end

  def player_fire
    ask_enter_shot
    evaluate_shoot_in_board
  end

  def evaluate_shoot_in_board
    if Evaluator.position.include?(@input)
      evaluate_player_shot_not_used
    else
      puts Messages::INVALID_INPUT
      player_fire
    end
  end

  def evaluate_player_shot_not_used
    if @player_shots.count(@input) == 0
      puts "You hit that spot"
      @player_shots << @input
      @player_tries += 1
    else
      puts Messages::INVALID_INPUT
      player_shoot
    end
  end

  def computer_shoot
    shot = Evaluator.position.sample
    evaluate_ai_shot_not_used(shot)
  end

  def evaluate_ai_shot_not_used(shot)
    if @ai_shots.count(shot) == 0
      puts "You hit that spot"
      @ai_shots << shot
      @ai_tries += 1
    else
      computer_shoot
    end
  end

end
