
#3

module Motorized
	def rev_motor
		puts "Revving motor!"
	end
end

module Battery_Powered
	attr_accessor :power_level

  def initialize
    self.power_level ||= 0
  end

  def charge
    self.power_level += 1
  end
end

class Drill
	include Motorized
	include Battery_Powered
end

class ElectricCar
	include Motorized
	include Battery_Powered
end
module Motorized
	def rev_motor
		puts "Revving motor!"
	end
end

module Battery_Powered
	attr_accessor :power_level

  def initialize
    @power_level ||= 0
  end

  def charge
    self.power_level += 1
  end
end

class Drill
	include Motorized
	include Battery_Powered
end

class ElectricCar
	include Motorized
	include Battery_Powered
end

class Phone 
	include Battery_Powered
end

drill = Drill.new
drill.charge
puts drill.power_level

car = ElectricCar.new
car.charge
car.rev_motor

phone =Phone.new
phone.charge
puts phone.power_level