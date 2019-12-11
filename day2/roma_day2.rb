#1
def check_equality(number)
  number.to_s == number.to_s.reverse
end


def find_palindrome
  r1 = (999..1)
  r2 = r1

  (r1.first).downto(r1.last).each do |i|
    (r2.first).downto(r2.last).each do |j|
      if check_equality( i * j )
        puts "#{i} * #{j} = #{i*j}"
        return
      end
    end
  end
end
puts"_________________________"


#2
num = 2520
until (1..20).all?{|x| num % x == 0}
  num += 2520
end
puts "#{num}"

puts"_________________________"


#3
(1..1000).each do |a|
    (2..1000).each do |b|
        c = 1000 - a - b
        if a**2 + b**2 == c**2 && b > a && c > b
#           puts a,b,c
            puts a * b * c
        end
    end
end
