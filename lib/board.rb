class Board
  attr_accessor :arr
  def initialize
    @arr = [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
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
end
