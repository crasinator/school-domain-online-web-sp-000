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

  def grade(num)
    return roster[num] 
  end 
  
  def sort 
    roster[grade].sort
  end 

end 
 