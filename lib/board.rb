class Board
  attr_accessor :arr
  def initialize
    @arr = [
      ["A", "B", "X"],
      ["D", "E", "X"],
      ["G", "H", "X"]
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
    (0..3).each do |col_ix|
      col = []
      arr.each do |row|
        puts row[col_ix]
        col << row[col_ix]
      end
      if col.all?(symbol)
        puts "#{symbol} victory!"
        return true
      end
    end
    # check rows
    arr.each do |row|
      # row.each do |col|
      #   puts col
      # end
      if row.all?(symbol)
        puts "#{symbol} victory!"
        return true
      end
    end
    # check diagonals
  end
end
