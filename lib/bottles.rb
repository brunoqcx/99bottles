require_relative './empty'
require_relative './single'
require_relative './multiple'

class Bottles
  def verse(number)
    bottles(number).verse
  end

  def verses(*numbers)
    # *numbers.map { |number| verse(number) }
    *numbers
  end

  def bottles(number)
    case number
    when 0
      ::Empty.new
    when 1
      ::Single.new
    else
      ::Multiple.new(number)
    end
  end
end
