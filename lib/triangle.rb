class Triangle
  # write code here'
  attr_accessor :kind

  def initialize (length1, length2, length3)
    @triangle_type = nil

    @length1 = length1
    @length2 = length2
    @length3 = length3

  end

  def throw_error
    begin
      raise TriangleError
    rescue TriangleError => error
      puts error.message 
    end

  end

  def kind 

    if @length1 < 0 || @length2 < 0 || @length3 < 0
      throw_error
      break;
    elsif (@length1 + @length2) < @length3
      throw_error
      break;
    else

    end
  end

  class TriangleError < StandardError
    def message 
      "I do not recognize that"
    end
  end

end
