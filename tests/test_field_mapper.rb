require 'minitest/autorun'
require_relative '../lib/parser/delimiter_sniffer'
require_relative '../lib/parser/person'

#describe "FieldMapper" do
#	before :all do 
#	  @row_spaces = "Thomson Joe Male 1/1/2015"
#	  @row_pipes = "Thomson | Joe | Male | 1/1/2015"
#	  @row_commas = "Thomson, Joe, Male, 1/1/2015"
#	  @row_invalid = "Thomson/Joe/Male/1/1/2015"
#	end

#	it "should return First Name when pipe is the delimiter" do
#	  @field_mapper = FieldMapper.New(@row_pipes,"|").must_equal "Joe"
#	end
#end