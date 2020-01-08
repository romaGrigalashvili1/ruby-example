#1
def buyer(name="roma",last_n="grigalashvili",age=20)
    "#{name}, #{last_n}, #{age}"
end

puts buyer
puts buyer("kaxa","grigoria",22)
puts "____________________"
#2

def wording(word,pad_width=word.length/2)
    "["*pad_width+word+"]"*pad_width
end

puts wording("television")
puts wording("jumanji")
puts wording("jumanji",5)
puts "____________________"
#3

def asterisk(first,*splat,last)
    puts "First:#{first.inspect}, splat:#{splat.inspect}, " +
    "last: #{last.inspect}"
end

puts asterisk(1,2)
puts asterisk(10,11,12,13)
puts "____________________"
#4

def double(p1)
    yield(p1*3)
end

puts double(7) {|value| "I got #{value}"}
puts double("jer"){|val| "Then I got #{val}"}
puts "____________________"
#5

class TaxCalculator
    def initialize(text, &block)
        @text, @block = text, block
    end
    def get_text(amount)
        "#@text on #{amount} = #{@block.call (amount) }"
    end
end

tc = TaxCalculator.new("Sales text"){|amt| amt*0.075}

puts tc.get_text(100)
puts tc.get_text(200)
puts "____________________"
#6

def number(num)
    case
    when num > 0 then "positive"
    when num < 0 then "negative"
    else              "zero"
    end
end

puts number(23)
puts number(0)
puts "____________________"
#7
        
def number
    100.times do |num|
        square = num*num
        return num, square if square >1000
    end
end
puts number
puts "____________________"

