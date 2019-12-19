class Student
  attr_accessor :name , :lname , :gpa , :dept
  def initialize (name, lname , gpa ,dept)
    @name=name
    @lname=lname
    @gpa=gpa
    @dept=dept
  end
end