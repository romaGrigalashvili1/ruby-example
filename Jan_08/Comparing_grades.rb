class Grade
	include Comparable

	POINTS=["A","B","C","D","F"]

	attr_reader :letter

	def initialize(letter)
		@letter=letter
	end



a_grade = Grade.new("A")
b_grade = Grade.new("B")
c_grade = Grade.new("C")
d_grade = Grade.new("D")
f_grade = Grade.new("F")

puts "a_grade > c_grade:  #{a_grade > c_grade}"
puts "f_grade < d_grade:  #{f_grade < d_grade}"
puts "b_grade > a_grade:  #{b_grade > a_grade}"
puts "a_grade == a_grade: #{a_grade == a_grade}"
