class Scrabble
  attr_reader :word

  def initialize
    @word = nil
  end

  def score(word)
    @word = word.upcase!
  end

  def sub_points
    point_values =
      {
        "A"=>1, "B"=>3, "C"=>3, "D"=>2,
        "E"=>1, "F"=>4, "G"=>2, "H"=>4,
        "I"=>1, "J"=>8, "K"=>5, "L"=>1,
        "M"=>3, "N"=>1, "O"=>1, "P"=>3,
        "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
        "U"=>1, "V"=>4, "W"=>4, "X"=>8,
        "Y"=>4, "Z"=>10
      }

     subbed_points = @word.split(//).map {|letter|
        letter = point_values[letter]
      }
      return subbed_points
  end

  def add_points(arg)
    arg.reduce(:+)
  end
end
