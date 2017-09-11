class Triangle
  attr_reader(:first_side , :second_side, :third_side)
  def initialize(side1, side2 , side3)
    @first_side = side1
    @second_side = side2
    @third_side = side3
  end

  def find_triangle
    if @first_side + @second_side > @third_side
      if (@first_side == @second_side) && (@third_side == @second_side)
        return 'Equilateral'
      elsif(@first_side == @second_side) || (@third_side == @second_side) ||    (@third_side == @first_side)
        return 'Isosceles'
      else
        return 'Scalene'
      end
    else
      return "Not a triangle"
    end
  end

end
