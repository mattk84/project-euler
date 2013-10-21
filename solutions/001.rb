#!/usr/bin/env ruby

class Problem001
  def self.multiples_of_three_or_five_below(limit)
    (1..limit-1).select { |i| (i % 3 == 0) || (i % 5 == 0) }
  end
  
  def self.sum_array(a)
    a.inject(0) { |sum, item| sum + item }
  end
  
  def self.run
    limit = 1000
    matches = multiples_of_three_or_five_below limit
    sum_array matches
  end
end

p Problem001.run
