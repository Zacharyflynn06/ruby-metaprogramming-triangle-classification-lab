require 'pry'

class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    # @all = []
    # @all << @s1
    # @all << @s2
    # @all << @s3
    # @all.sort
    if ((@s1 + @s2) <= @s3) || ((@s2 + @s3) <= @s1) || ((@s3 + @s1) <= @s2) || ((@s1 <= 0.0) || (@s2 <= 0.0) || (@s3 <= 0.0))
      raise TriangleError
    elsif (@s1 == @s2) && (@s2 == @s3)
      :equilateral
    elsif (@s1 == @s2) || (@s2 == @s3) || (@s1 == @s3)
      :isosceles 
    else
      :scalene
    end
    # binding.pry
  end

  class TriangleError < StandardError
    # def message
    #   "not a valid triangle"
    # end
  end

end
