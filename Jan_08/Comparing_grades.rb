class Grade
	include Comparable
	VALID_LETTERS =  ["A", "B", "C", "D", "F"]

	attr_reader :letter

	def initialize(letter)

		@letter=letter

	end

	def letter=(value)
    unless VALID_LETTERS.include?(value)
      raise "#{value} is not a valid grade letter"
    end

    @letter = value
  end

  	def <=>(other)
  		other.letter <=> self.letter
  	end
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
