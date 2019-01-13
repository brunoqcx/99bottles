require_relative './empty'
require_relative './single'
require_relative './multiple'

class Bottles
  def verse(quantity)
    bottles(quantity).verse
  end

  def verses(begin_quantity, end_quantity)
    verses_collection(begin_quantity, end_quantity).join("\n")
  end

  def song
    verses(99, 0)
  end

  def verses_collection(begin_quantity, end_quantity)
    (end_quantity..begin_quantity).to_a.reverse.map { |number| verse(number) }
  end

  def bottles(quantity)
    case quantity
    when 0
      ::Empty.new
    when 1
      ::Single.new
    else
      ::Multiple.new(quantity)
    end
  end
end
