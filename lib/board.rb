class Board
  att_accessor :arr
  def initialize
    @arr = [
      [ " ", " ", " "],
      [ " ", " ", " "],
      [ " ", " ", " "]
    ]
  end

  def player_move(row, col, sym)
    arr[col][row] = sym
  end

  def display
    return " #{arr[0][0]} | #{arr[1][0]} | #{arr[2][0]} "
    return "---+---+---"
    return " #{arr[0][1]} | #{arr[1][1]} | #{arr[2][1]} "
    return "---+---+---"
    return " #{arr[0][2]} | #{arr[1][2]} | #{arr[2][2]} "
  end
end