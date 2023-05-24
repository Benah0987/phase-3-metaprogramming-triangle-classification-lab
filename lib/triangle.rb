class Triangle
  # write code here
  # accepts three arguments on initialization
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    validate_triangle
  end

  # Define an instance method, #kind
  def kind
      # all three sides equal
    if @side1 == @side2 && @side2 == @side3
      :equilateral
      # two sides equal
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end

  # private method
  def validate_triangle

    sides = [@side1, @side2, @side3].sort
    if sides.any? { |side| side <= 0 } || sides[0] + sides[1] <= sides[2]
      raise TriangleError, "Invalid triangle"
    end
  end

end
