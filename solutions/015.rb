#!/usr/bin/env ruby

class Problem015
  def self.run
    l = 20
    w = 20
    
    combinations = factorial(l+w) / (factorial(l) * factorial(w))
  end
  
  def self.factorial(n)
    sum = n
    while n > 1 do 
      n -= 1
      
      sum = sum * n
    end
      
    sum
  end
end

p Problem015.run
