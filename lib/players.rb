class Players
  attr_reader :name, :sym, :score

  def initialize(name, sym)
    @name = name
    @sym = sym
    @score = 0
  end

  def inc_score
    @score = @score + 1
  end

end