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
  
  def initialize(data)
    @data = data
    return spaces_data_mapper    
  end
  
  def get_mapped_data
  	return @mapped_data
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
  
  def comma_data_mapper
  end
  
  def pipe_data_mapper
  end
  
  def set_delimiter_type
    # Discover the delimeter being used.
    @delimeter_type = /\s/
	
  end
  
end