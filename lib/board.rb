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
    arr[row.to_i - 1][col.to_i - 1] = sym
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
    # return false if no victory
    return false
  end

  def isfull?
    return true if arr.flatten.none?(" ")
    return false
  end

  def space_occupied?(row, col)
    if arr[row.to_i - 1][col.to_i - 1] == " "
      return false
    else
      return true
    end
  end
end
