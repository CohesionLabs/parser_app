require 'csv'
require '../lib/parser/field_mapper'
require '../lib/parser/person'

item_arr = []

f = File.open("../space.txt","r")

f.each_line { |line| 
	
	# Call the data/field mapper to hydrate the Person class.
	field_mapper = FieldMapper.new(line)
	
	#puts fields.to_s
	
}