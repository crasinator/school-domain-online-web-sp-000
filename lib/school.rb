# code here!

class School 
  attr_accessor :name 
  attr_reader :roster #def roster return roster end 
  attr_writer :sort 
  
  
  def initialize(name)
    @name = name 
    @roster = { }
  end
  
  def add_student(stuname, class_num)
     if roster.has_key?(class_num)
       roster[class_num] << stuname
     else 
       roster[class_num] = [stuname]
     end 
  end 

  def grade(class_num)
    roster[class_num]
  end 
  
  def sort 
    self.roster.each do |class_num, arr|
      arr.sort!
    end 
  end 
end 
 