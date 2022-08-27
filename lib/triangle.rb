class Triangle
  # write code here
  attr_accessor
  def initialize (one, two, three)
    @one=one
    @two=two
    @three=three
  end
  def kind 
    if @one <=0 || @two <=0 || @three <=0
      raise TriangleError
    end
    
    if @one +@two <=@three || @one +@three <=@two || @two + @three <=@one
      raise TriangleError
    end
    return :equilateral if @one==@two && @two==@three
    return :isosceles if @one==@two || @two==@three || @one == @three
    return :scalene if @one!=@two && @two!=@three && @two !=@three
    
  end
  class TriangleError < StandardError
  end
end