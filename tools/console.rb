require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


bob = CarOwner.new ("Bob")
jim = CarOwner.new ("Jim")
tom = CarOwner.new ("Tom")

joe = Mechanic.new("Max", "Banger")
sam = Mechanic.new("Sam", "Lux")
jay = Mechanic.new("Jay", "Sport")

volks = Car.new("Volks", "Polo", "Banger", bob, joe)
bmw = Car.new("BMW", "C", "Lux", jim, sam)
dodge = Car.new("Dodge", "Viper", "Sport", tom, jay)
beetle = Car.new("Volks", "Beetle", "Lux", jim, sam)
twingo = Car.new("Renault", "Twingo", "Sport", tom, jay)

binding.pry
