module Debug
  def who_am_i?
    "#{self.class.name} (id:#{self.object_id}:#{self.name}"

  end
end


class Country
  include Comparable
  include Debug
  attr_reader :name,:area

  def initialize(name,area)
    @name=name
    @area=area
  end

  def to_s

    "Country #{@name} of area #{@area}"
  
  end

  def <=>(other)
    self.area <=> other.area

  end

end

class City < Country
  include Debug
  def print

    "City #{name} of area  #{@area}"
  end

end

city=City.new("Tbilisi",674)

country=Country.new("Georgia",47472)

p1=Country.new("Turkey",649865)
p2=Country.new("Aussia",8795671)
p3=Country.new("USA",9907678)

puts city.print
puts country

puts "____________________________"
puts "____________________________"

puts city.who_am_i?
puts country.who_am_i?
puts p1.who_am_i?

puts "____________________________"
puts "____________________________"

puts "Sorted list:"
sort_array=[ p1, p2, p3].sort
puts sort_array


puts "____________________________"
puts "____________________________"

