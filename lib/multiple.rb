class Multiple
  def initialize(number)
    @number = number
  end

  def verse
    <<-VERSE
#{@number} bottles of beer on the wall, #{@number} bottles of beer.
Take one down and pass it around, #{@number-1} #{bottles_plural(@number-1)} of beer on the wall.
    VERSE
  end

  def bottles_plural(number)
    number == 1 ? "bottle" : "bottles"
  end
end