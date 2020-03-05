class Board
  attr_accessor :arr
  def initialize
    @arr = [
      ["A", "B", "X"],
      ["D", "X", "F"],
      ["X", "H", "I"]
    ]
  end

  def player_move(col, row, sym)
    arr[row - 1][col - 1] = sym
  end

  def display
    return %Q(
 #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]}
---+---+---
 #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]}
---+---+---
 #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]}

)
  end

  def check_symbol_victory(symbol)
    # check columns
    arr.each
    (0..2).each do |col_ix|
      col = []
      arr.each do |row|
        col << row[col_ix]
      end
      if col.all?(symbol)
        return true
      end
    end
    # check rows
    arr.each do |row|
      if row.all?(symbol)
        return true
      end
    end
    # check diagonals
    diag = []
    (0..2).each do |ix|
      diag << arr[ix][ix]
    end
    if diag.all?(symbol)
      return true
    end

    diag = []
    inv = [2, 1, 0]
    (0..2).each do |ix|
      diag << arr[ix][inv[ix]]
    end
    if diag.all?(symbol)
      return true
    end
  end
end
