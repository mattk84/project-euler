#!/usr/bin/env ruby

require 'prime'

class Problem003
  def self.run
    num = 600851475143
    # for each prime, repeatedly divide out until it divides no more

    Prime.each(num) do |p|
      while(num % p == 0)
        num = num / p
      end
      
      # when the number left is prime, this is the answer
      return num if Prime.prime?(num)
    end

    raise "Logic Error" # should never get here, if we understand math
  end
end

p Problem003.run