# rubocop : disable Metrics/MethodLength
class Board
  def initialize
    @arr = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
    ]
  end

  def player_move(col, row, sym)
    @arr[row.to_i - 1][col.to_i - 1] = sym
  end

  def display
    %(  c1  c2  c3
r1 #{@arr[0][0]} | #{@arr[0][1]} | #{@arr[0][2]}
  ---+---+---
r2 #{@arr[1][0]} | #{@arr[1][1]} | #{@arr[1][2]}
  ---+---+---
r3 #{@arr[2][0]} | #{@arr[2][1]} | #{@arr[2][2]}

)
  end

  def check_symbol_victory(symbol)
    @arr.each
    (0..2).each do |col_ix|
      col = []
      @arr.each do |row|
        col << row[col_ix]
      end
      return true if col.all?(symbol)
    end
    @arr.each do |row|
      return true if row.all?(symbol)
    end
    diag = []
    (0..2).each do |ix|
      diag << @arr[ix][ix]
    end
    return true if diag.all?(symbol)

    diag = []
    inv = [2, 1, 0]
    (0..2).each do |ix|
      diag << @arr[ix][inv[ix]]
    end
    return true if diag.all?(symbol)

    false
  end

  def isfull?
    return true if @arr.flatten.none?(' ')

    false
  end

  def space_occupied?(row, col)
    (@arr[row.to_i - 1][col.to_i - 1] != ' ')
  end

  def clean
    @arr = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
    ]
  end
end
# rubocop : enable Metrics/MethodLength
