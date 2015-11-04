# Public: Various methods useful for performing mathematical operations.
# All methods are module methods and should be called on the Math module.
#
# Examples
#
#   Math.square_root(9)
#   # => 3

require '../lib/parser/person'

class FieldMapper
  attr_accessor :delimeter_type, :data, :mapped_data
  
  def initialize(data, delimiter)
    @data = data
    
    case delimiter.gsub(/\s+/,'')
	  when '|'
	    pipe_data_mapper
	  when ','
	    comma_data_mapper
	  else
	    spaces_data_mapper
	  end    
  end
  
  def spaces_data_mapper
  	# Code for parsing and hydrating the spaces data mapper.
  	# Split each line into an array.
    fields = @data.split(/\s/)
	
    person = Person.new
    person.first_name = fields[1]
    person.last_name = fields[0]
    person.gender = fields[3]
    person.date_of_birth = fields[4]
    person.favorite_color = fields[5]
	
    @mapped_data = person
	
  end
  
  # ',' Comma mapper.
  def comma_data_mapper
    fields = @data.split(',')
	
	person = Person.new
    person.first_name = fields[1]
    person.last_name = fields[0]
    person.gender = fields[2]
    person.date_of_birth = fields[4]
    person.favorite_color = fields[3]
  
    @mapped_data = person	  
  end
  
  # '|' Pipe data mapper.
  def pipe_data_mapper
    fields = @data.split('|')
	
	person = Person.new
    person.first_name = fields[1]
    person.last_name = fields[0]
    person.gender = fields[3]
    person.date_of_birth = fields[5]
    person.favorite_color = fields[4]
  
    @mapped_data = person
    
  end
  
end