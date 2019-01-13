class Multiple
  def initialize(quantity)
    @quantity = quantity
  end

  def verse
    <<-VERSE
#{@quantity} bottles of beer on the wall, #{@quantity} bottles of beer.
Take one down and pass it around, #{@quantity-1} #{bottles_plural(@quantity-1)} of beer on the wall.
    VERSE
  end

  private

  def bottles_plural(quantity)
    quantity == 1 ? "bottle" : "bottles"
  end
end