$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  while movie_index < nds[directors_database][:movies].length do
    totals[director_name] += nds[director_index][:movies][movie_index][movie_index][:worldwide_grosses]
    movie_index += 1
  end
  director_index += 1
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  director_index = 0
  result = {}
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    totals[director_name] = 0
    gross_for_director
  end
  results.push(gross_for_director)
end
