class Triangle
 
  attr_reader :length_a, :length_b, :length_c
​
  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end
​
  def kind
    triangle_equality
    if @length_a == @length_b && @length_b == @length_c
      :equilateral
    elsif
      @length_a == @length_b || @length_a == @length_c || @length_b == @length_c
        :isosceles
    else
      # @length_a != @length_b && @length_b != @length_c && @length_a != @length_c
        :scalene
    
    end
  end
​
    def triangle_equality
      
      #sum lengths of any two sides <= third side or any side <= 0, raise TriangleError
      real_triangle = [(@length_a + @length_b > @length_c), (@length_a + @length_c > @length_b), (@length_b + @length_c > @length_a)]
      if @length_a == 0 || @length_b == 0 || @length_c == 0
        raise TriangleError
      end
    end
​
    class TriangleError < StandardError
    end
      
    #this is a comment
    
end
