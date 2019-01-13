require_relative './empty'
require_relative './single'
require_relative './multiple'

class Bottles
  def verse(number)
    bottles(number).verse
  end

  def verses(first_num, last_num)
    (last_num..first_num).to_a.reverse.map { |number| verse(number) }.join("\n")
  end

  def song
    verses(99, 0)
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
