puts "exercise of Unit_6\n"

def numbers(num)

	puts "#{num.class}: #{num}"
end

#puts numbers(0xaabb)
p numbers(0b10_1010)
puts "_______________________"

puts "Enumerator object : "
10.downto(7).with_index {|num, index| puts "#{index}: #{num}"}

puts "_______________________"

puts "The exercise #{ def is(a)
'is ' + a
end
is('best')
} examples for understend very good.."

puts "_______________________"

Song = Struct.new(:title, :name, :length)

File.open("songdata") do |song_file|
	songs = []

	song_file.each do |line|
		file, length, name, title = line.chomp.split(/\s*\|\s*/)
		name.squeeze!(" ")
		mins,secs=length.scan(/\d+/)
		songs << Song.new(title, name, mins.to_i*60 + secs.to_i)
	end

	puts songs[1]
end
puts "_______________________"

class PowerOfTwo
attr_reader :value

def initialize(value)
	
	@value = value
	end
	
	def <=>(other)
		@value <=> other.value
		end
	
	def succ
		PowerOfTwo.new(@value + @value)
		end

	def to_s
		@value.to_s
	end
end

p1 = PowerOfTwo.new(4)
p2 = PowerOfTwo.new(70)

puts (p1..p2).to_a

puts"_______________________"
puts"enter eny number"
car_age = gets.to_f

case car_age
when 0..0
	puts "Mmm.. new car smell"
when 1..2
	puts "Nice and new"
when 3..9
	puts "Reliable but slightly dinged"
when 10..29
	puts "Clunker"
else
	puts "Vintage gem"
end

puts"_______________________"