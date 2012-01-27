module ClassMethods
  def split_number(number)
    l = [] 
    String(number).each_char do |c|
      l << c.to_i
    end
    l
  end

  def sum_square_array(array)
    array.inject(0) do |sum, e|
      sum + e ** 2
    end
  end
end

class HappyNumber
  extend ClassMethods
  UPPER_LIMIT = 30

  def initialize(number)
    @number = number
  end

  def happy?
    result = @number
    (1..UPPER_LIMIT).each do 
      splited = self.class.split_number(result)
      result = self.class.sum_square_array(splited)
      break if result == 1
    end
    result == 1
  end
end
