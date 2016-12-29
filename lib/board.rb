class Board #maybe better make it a module and self.methods
            #but if so, how to move information within without
            #calling method and passing an argument
  attr_reader :row_a,
              :row_b,
              :row_c,
              :row_d,
              :rows,
              :board,
              :two_unit_positions,
              :three_unit_positions,
              :e,
              :h
              #maybe not so many attr_reader needed

  def initialize #if module this method could be set_board
    @row_a = ["A"] + [" "]* 8
    @row_b = ["B"] + [" "]* 8
    @row_c = ["C"] + [" "]* 8
    @row_d = ["D"] + [" "]* 8
    empty_board
  end

  def top_bottom_board
    "=========="
  end

  def columns
    ". 1 2 3 4"
  end

  def rows
    "#{@row_a.join}\n#{@row_b.join}\n#{@row_c.join}\n#{@row_d.join}"
  end

  def empty_board
    (top_bottom_board + "\n" + columns + "\n" + rows + "\n" + top_bottom_board + "\n")
  end

  def two_unit_valid_places
    @two_unit_positions = ["A1 A2", "A2 A3", "A3 A4",
                          "B1 B2", "B2 B3", "B3 B4",
                          "C1 C2", "C2 C3", "C3 C4",
                          "D1 D2", "D2 D3", "D3 D4",
                          "A1 B1", "B1 C1", "C1 D1",
                          "A2 B2", "B2 C2", "C2 D2",
                          "A3 B3", "B3 C3", "C3 D3",
                          "A4 B4", "B4 C4", "C4 D4"]
  end

  def three_unit_valid_places
    @three_unit_positions = ["A1 A3", "A2 A4", "B1 B3",
                            "B2 B4", "C1 C3", "C2 C4",
                            "D1 D3", "D2 D4", "A1 C1",
                            "B1 D1", "A2 C2", "B2 D2",
                            "A3 C3", "B3 D3", "A4 C4",
                            "B4 D4"]
  end

  def get_middle_coordinate(coordinates)
    a = coordinates
    b = coordinates.chars
    if b[-2] == b[0]
      c = b[-1].to_i - b[1].to_i
      d = b[0] + (b[1].to_i + 1).to_s
      @e = a.split(" ").insert(1, d)
    else
      f = b[0].next
      g = f + b[1]
      @h = a.split(" ").insert(1, g)
    end
  end

  def positions #VALID POSITIONS TO SHOOT
    @two_unit_positions.map do |position|
      position.split(" ")
    end.flatten.uniq
  end
end

# b = Board.new
# p b.two_unit_valid_places
# p b.two_unit_positions
# p b.three_unit_valid_places
# p b.three_unit_positions
