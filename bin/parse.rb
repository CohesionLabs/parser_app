require 'csv'
require '../lib/parser/field_mapper'
require '../lib/parser/person'

item_arr = []

# Sort first, then return string representation.

f = File.open("../space.txt","r")

f.each_line { |line| 
	
	#split_line = line.split(/\s/)
	_person = FieldMapper.new(line)
	#puts _person.get_mapped_data
	item_arr.push(_person.get_mapped_data)	
}

# By Gender, then last name.
item_arr.sort!{ |a,b|  (a.gender == b.gender) ? a.last_name <=> b.last_name : a.gender <=> b.gender }

#puts item_arr.to_s

item_arr.collect!{ |p| "#{p.to_s}" }

puts item_arr.to_s

## Do this after sorting. 
# Call the data/field mapper to hydrate the Person class.
	#_person = FieldMapper.new(line)
	
	#puts _person.get_mapped_data