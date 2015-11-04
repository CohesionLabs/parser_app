require 'csv'
require '../lib/parser/field_mapper'
require '../lib/parser/person'

item_arr = []

f = File.open("../space.txt","r")

f.each_line { |line| 
	
	# Call the data/field mapper to hydrate the Person class.
	_person = FieldMapper.new(line)
	
	puts _person.get_mapped_data.representational_string
	
}