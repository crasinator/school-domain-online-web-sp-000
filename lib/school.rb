# code here!

class School 
  attr_accessor :name
  attr_writer :sort
  
  
  def initialize(name)
    @name = name 
    @roster = { }
  end
  
  def add_student(stuname, grade)
     if roster.has_key?(grade)
       roster[grade] << stuname
     else 
       roster[grade] = [stuname]
     end 
  end 

  def roster 
    @roster
  end 

  def grade(class_num)
    roster[class_num]
  end 
  
end 
 