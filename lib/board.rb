class Board
  attr_accessor :arr
  def initialize
    @arr = [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
  end

  def player_move(col, row, sym)
    arr[col - 1][row - 1] = sym
  end

  def display
    return %Q(
 #{arr[0][0]} | #{arr[1][0]} | #{arr[2][0]}
---+---+---
 #{arr[0][1]} | #{arr[1][1]} | #{arr[2][1]}
---+---+---
 #{arr[0][2]} | #{arr[1][2]} | #{arr[2][2]}

)
  end

  def check_symbol_victory(symbol)
    # check columns
    # check rows
    # check diagonals
  end
end
