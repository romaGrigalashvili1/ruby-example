array=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#1
array.each  do |num|
puts num
end
puts "_______________________"

#2

array.each do |num1|
  puts num1 if num1>5
end
puts array
puts "_______________________"


#3
new_array = array.select do |number|
  number % 2 != 0
end
puts new_array
puts "_______________________"


arr2=[]

#4
arr2.push(11)
puts arr2
puts "_______________________"


#5
arr2.pop(11)
arr2.push(3)
puts arr2
puts "_______________________"


#6
b = [1, 1, 2, 2, 3, 3, 4, 4]
b.uniq!
puts b

#7
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s") }
puts arr
arr.delete_if { |word| word.start_with?("s", "w") }
puts arr
puts "_______________________"

#8

fruit_string = "boulder, apple, banana, peach, cow"
fruit_arr = fruit_string.split(",")
fruit_arr.pop
fruit_arr.shift
fruit_arr = fruit_arr.join(",")

p fruit_arr
      
puts "_______________________"

#9
def with_these_numbers(a,b)
  yield a,b
end
#
with_these_numbers(1, 4) do |first, second|
  puts first + second 
end
#
with_these_numbers(3, 6) do |first, second|
  puts first * second
end
#
with_these_numbers(12, 3) do |first, second|
  puts first / second 
end

puts "_______________________"



#10
class Rectangle
	attr_reader :width, :height

  	def width=(value)
    	if value < 0
      		raise "Width can't be negative!"
    	end
    	@width = value
  	end

  	def height=(value)
    	if value < 0
      		raise "Height can't be negative!"
    	end
    	@height = value
 	end

  private
  def area
    	width * height
  	end
end

class Square < Rectangle

	def width=(value)
    if value < 0
          raise "Width can't be negative!"
    end
    @width = @height = value 
end
	def height=(value)
    if value < 0
          raise "Height can't be negative!"
    end
		@height = @width = value
	end

  def s_area
    area
  end
end

sq1 = Square.new
sq1.height = 7

puts sq1.s_area
