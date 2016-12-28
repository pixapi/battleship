class Game

  def two_unit_valid_places
    two_unit_positions = ["A1 A2", "A2 A3", "A3 A4",
                          "B1 B2", "B2 B3", "B3 B4",
                          "C1 C2", "C2 C3", "C3 C4",
                          "D1 D2", "D2 D3", "D3 D4",
                          "A1 B1", "B1 C1", "C1 D1",
                          "A2 B2", "B2 C2", "C2 D2",
                          "A3 B3", "B3 C3", "C3 D3",
                          "A4 B4", "B4 C4", "C4 D4"]
  end

  def three_unit_valid_places
    three_unit_positions = ["A1 A3", "A2 A4", "B1 B3",
                            "B2 B4", "C1 C3", "C2 C4",
                            "D1 D3", "D2 D4", "A1 C1",
                            "B1 D1", "A2 C2", "B2 D2",
                            "A3 C3", "B3 D3", "A4, C4",
                            "B4 D4"]
  end


  def set_computer_ships
    @ai = Computer.new
    @ai.two_unit_placement
    @ai.three_unit_placement
    set_player_ships
  end

  def set_player_ships
    @player = Player.new
    save_empty_board
  end
end
