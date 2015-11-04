require 'date'
class Person
  attr_accessor :first_name, :last_name, :gender, :favorite_color, :date_of_birth 
  
  def gender
    @gender = @gender[0].to_s.downcase == 'f' ? 'Female' : 'Male'	
  end
  
  def date_of_birth
    if @date_of_birth.include? "/"
      d = Date.strptime(@date_of_birth.strip.gsub(/\s+/, ""),"%m/%d/%Y").strftime('%-m/%-d/%Y')
    else
      d = DateTime.parse(@date_of_birth).strftime("%-m/%-d/%Y")  
    end
    
    @date_of_birth = d
  end
  
  def to_s
    "#{@first_name.strip} #{@last_name.strip} #{gender.strip} #{date_of_birth.strip} #{@favorite_color.strip}"
  end
  
 # @gender = case @gender[0].to_s.downcase
 #           when 'f'
 #             'Female'
 #           when 'm'
 #             'Male'
 #           else
 #             'Uknown'
 #           end
end