
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(directors_database)
  final_hash = {}
  directors_index = 0
  total_gross = 0
  current_total = 0
  
  while directors_index < directors_database.length do
    movies_index = 0
    while movies_index < directors_database[directors_index][:movies].length do
      current_total += directors_database[directors_index][:movies][movies_index][:worldwide_gross]
      currentname = (directors_database[directors_index][:name]).to_s
      total_gross += directors_database[directors_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
      final_hash[currentname] = current_total
      binding.pry
      end
      
    directors_index += 1
    end
final_hash[:total] = total_gross
return final_hash
    end

