$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #binding.pry
  gross = 0

  name_index = 0
  while name_index < director_data[:movies].length do
    gross += director_data[:movies][name_index][:worldwide_gross]
    
  #  gross_index = 0
  # while gross_index < director_data[name_index] do
  #  gross += director_data[name_index][:worldwide_gross]

  #  gross_index +=1
  #  end
  name_index +=1
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}

  index = 0
  while index < nds.length do
    director_data = nds[index]
    name = director_data[:name]
    #binding.pry

    result[name] = gross_for_director(director_data)
    
    index += 1
  end

  result
end
