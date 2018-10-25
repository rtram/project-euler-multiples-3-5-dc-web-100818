require 'pry'

class Multiples
  
  attr_accessor :limit
  
  def initialize(limit)
    @limit = limit
    raise Argument Error if(limit.is_a? INTEGER)
  end 
  
  def collect_multiples
    (1...limit).select do |el|
      (el % 3 == 0 || el % 5 == 0)
    end 
  end


  def sum_multiples
    self.collect_multiples.inject(:+)
  end 
end 
