#!/usr/bin/env ruby

class Problem022
  def self.load_from_file(dirpath)
    #parse provided names file
    name_string = File.read(dirpath)
    name_array = name_string.split(',')
    
    #sort names file alphabetically
    name_array.sort!
  end
  
  def self.calculate_alpha_value(item)
    sum = 0
    item.each_byte do |i|
      sum += (i - 64) if i != 34
    end
    
    sum
  end
  
  def self.calculate_scores_for(array)
    sum = 0
    
    array.each_index do |index|
      item = array[index]
      sum += calculate_alpha_value(item) * (index + 1)
    end
    
    sum
  end
  
  def self.run
    path = 'data/names.txt'
    data = load_from_file path
    sum = calculate_scores_for data
  end
end

p Problem022.run
