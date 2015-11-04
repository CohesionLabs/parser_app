require 'csv'
require '../lib/parser/delimiter_sniffer'
require '../lib/parser/field_mapper'

people_arr = []

# Sort first, then return string representation.
f = File.open("../space.txt","r")

#myDelimiter = DelimiterSniffer.new.sniff(f.first)
#puts myDelimiter

# Populate the array with People.
f.each_line do |line| 
	myDelimiter = DelimiterSniffer.new.sniff(line)	
	#puts myDelimiter	
	person = FieldMapper.new(line,myDelimiter)
	people_arr.push(person.get_mapped_data)	
end

# Sort by Gender, then last name, and return the string representation of this person.
people_arr
	.sort!{ |a,b|  (a.gender == b.gender) ? a.last_name <=> b.last_name : a.gender <=> b.gender }
	.collect!{ |p| "#{p.to_s}" }

#people_arr.collect!{ |p| "#{p.to_s}" }

puts people_arr.to_s