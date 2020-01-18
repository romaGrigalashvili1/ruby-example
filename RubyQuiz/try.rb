
#1


h={true => 'wow'}
a=['wow']
b=a.dup

puts h[a===b]
puts "_____________________"


#2 

puts "Enter n"
n=Integer(gets.chomp())
puts "Enter m"
m=Integer(gets.chomp())
arr_1=Array.new(n).map {|e| e=gets.chomp}
arr_2=Array.new(m).map {|e| e=gets.chomp}
arr_new=arr_1+arr_2
puts arr_new


puts "_____________________"

#3

puts "Enter n"
n = Integer(gets.chomp())
puts "Enter m"
m = Integer(gets.chomp())
puts "Enter array_1"
array_1=Array.new(n).map {|e| e = gets.chomp}
puts "Enter array_2"
array_2=Array.new(m).map {|e| e = gets.chomp}
p array_1
p array_2
array_both = []
array_1.each {|e| array_both << e}
array_2.each_with_index do |e , i|
  if array_both[i].nil?
    array_both << e
  else 
    array_both[i].concat(e)
  end
end
puts array_both


puts "_____________________"

#4

puts "Enter n"
n = Integer(gets.chomp)
puts "Enter arr1 "
arr1 = Array.new(n).map {|e| e = gets.chomp.split(',')}
arr1.each do |e|
  if e.include? ('a')
    arr1.delete(e)
  end
end
p arr1.flatten(1)

puts"_____________________"

#5

a = Integer(gets)
b = Integer(gets)
c = Integer(gets)
class Integer

  alias old_plus +
  alias old_mod %
  alias / *

  def *(other)
    old_mod(other)
  end

  def +(other)
    old_plus(2/other)
  end
end

puts a + b * c

puts "_____________________"

#6

def calc(n)
  calc = lambda do |n| 
    return n * 11 if n.odd?
    n * 10 
  end
end
a = calc(10)
puts a.call 1
puts a.call 2
puts a.call 3

puts "_____________________"


#7
puts "Enter n"
n = Integer(gets.chomp)
puts "Enter m"
m = Integer(gets.chomp)
def power_of(n)
   yield(n)
end

puts power_of(n) {|k| print k**m}

#8

class Person 

  def initialize(name, last_name, person_id)
    @name = name
    @last_name = last_name
    @person_id = person_id
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def last_name
    @last_name
  end

  def last_name=(new_last_name)
    @last_name = new_last_name
  end

  #person_id ას სჭირდება setter
  def person_id
    @person_id
  end
end

class Student < Person

  def initialize(name, last_name, person_id, gpa, school_name, school_city)
    super(name, last_name, person_id)
    @gpa = gpa
    @school_name = school_name
    @school_city = school_city
  end

  def gpa
    @gpa
  end

  def gpa=(new_gpa)
    @gpa = new_gpa
  end

  private
  def calculate_gpa
    gpa + gpa * 0.1
  end

  def school_name
    @school_name
  end

  def school_name=(new_school_name)
    @school_name = new_school_name
  end

  def school_city
    @school_city
  end

  def school_city=(new_school_city)
    @school_city = new_school_city
  end
end

#9

puts "Enter n"
n = gets.chomp.to_i
array = Array.new(n,0)

for i in 0...n
  puts "Enter #{i}"
  array[i] = Integer(gets.chomp)

end

array = array.select {|n| n.even?}
puts array.inject(:+)

puts "_____________________"

