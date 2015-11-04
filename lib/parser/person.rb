class Person
  attr_accessor :first_name, :last_name, :gender, :favorite_color, :date_of_birth 
  
  #Returns a string representation of the model in the desired format.
  def representational_string
  	"#{@first_name} #{@last_name} #{gender} #{@date_of_birth} #{@favorite_color}"
  end
  
  def gender
  	@gender = 'Female' if @gender[0].to_s.downcase == 'f'
  end
  
  #def to_s
  #	""
  #end
   
end