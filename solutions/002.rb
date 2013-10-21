#!/usr/bin/env ruby

class Problem002
  def self.run
    fib = [1, 1]
    sum = 0
    
    #iterate across fibonnaci sequence where terms are below 4000000
    while(fib[-1] < 4_000_000)
      new_term = fib[-1] + fib[-2]
      fib << new_term

      # sum only the even terms      
      sum += new_term if new_term % 2 == 0 
    end
    
    sum
  end
end

p Problem002.run
