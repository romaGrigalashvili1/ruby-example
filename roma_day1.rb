#1-2-3-4
puts"_________________________________________"
class Student
  attr_accessor :age
  attr_reader :name,:last_name,:age,:id
  def initialize(name, last_name, age, id)
    @name = name
    @last_name = last_name
    @age = age
    @id = id

  end
  def printing
  	print(@name+' '+@last_name+' ')
  	
  end

  def is_odd
    @age.odd?
  end
end
array = Array.new(3)

student1 = Student.new("Roma", "grigalashvili", 20, 13)
student2 = Student.new("Jondi", "jajanidze", 60, 23)
student3 = Student.new("vaxtang", "micobishvili", 50, 28)

array[0] = student1
array[1] = student2
array[2] = student3

print student1.printing,"\n"

puts array.size
puts student1.is_odd


#5-6
puts"_________________________________________"
array = [1, 3, 5, 7, 10]
sum = 0
array.each do |i|
  sum += i
end

print sum,"\n"

#7
puts"_________________________________________"
8.times do
	a="*"
	num=1
	if num.odd?
		puts a*4
		num+=1
	end
    if num.even?
	    puts a*3
	    num+=1
    end
end

#8
puts"_________________________________________"
i = 0
2.times do
  while i < 5
    puts " "*i + "*"
    i+=1
  end
  4.downto(0) do
    puts " "*i + "*"
    i-=1
  end
end


#9
puts"_________________________________________"
i=1
while i<50
  if i.even?
    puts i * i
  end
  i+=1
end

#10
puts"_________________________________________"
def arrya_sum(arr)
  if arr.any?
    sum = 0
    arr.each do |num|
      sum += num
    end
    sum
  else
    "zero"
  end
end

arr1=[12,123,241,432,124,12,231]
puts arrya_sum(arr1)



#11
puts"_________________________________________"

def arrya_2_sum(array)
  if array.size ==1
    array[0]
  elsif array.size > 1
    array_largest = array.max
    array.delete(array_largest)
    second_largest = array.max
    array.push(array_largest)
    sum=array_largest + second_largest
    print sum
  else
    "zero"
  end
end

arr3 = [213,12,218]
puts arrya_2_sum(arr3)



#12
puts"_________________________________________"





#13
puts"_________________________________________"
def hash_has_key(hash, key)
  if hash.has_key?(key)
    true
  else
    false
  end
end

newhash = { "name" => "roma", "surname" => "grigala", "age" => 20 }
emptyhash = {"name" => "Jondi"}

puts hash_has_key(newhash, "age")
puts hash_has_key(emptyhash, "surname")




#14
puts"_________________________________________"
def hash_values_to_integer(hash)
  hash.each {|k,v| hash[k] = v.to_i}
end

newhash1 = { "Roma" => "1", "Grigala" => "2", "Age" => "20" }
p hash_values_to_integer(newhash1)




#15
puts"_________________________________________"
def array_to_hash(array)
  hash = {}
  array.each_with_index do |v, i|
    hash[i] = v
  end
  hash
end
arr5 = [ "jax", "jux", "ehh"]
print array_to_hash(arr5),"\n"
