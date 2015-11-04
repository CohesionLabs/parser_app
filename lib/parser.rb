require 'csv'
require '../lib/parser/delimiter_sniffer'
require '../lib/parser/field_mapper'

class ParserApp
	def self.output_one
		people_arr = []
		# Sort first, then return string representation.
		f = File.open("../comma.txt","r")
		# Populate the array with People.
		f.each_line do |line| 
			myDelimiter = DelimiterSniffer.new.sniff(line)	
			#puts myDelimiter, line	
			person = FieldMapper.new(line,myDelimiter)
			people_arr.push(person.mapped_data)	
		end
		# Sort by Gender, then last name, and return the string representation of this person.
		people_arr
		.sort!{ |a,b|  (a.gender == b.gender) ? a.last_name <=> b.last_name : a.gender <=> b.gender }
		.collect!{ |p| "#{p.to_s}" }
		
		# Output the results to the console.
		puts people_arr
	end

	def self.output_two
 		puts 'Output 2'
	end

	def self.output_three
 		puts 'Output 3'
	end
end