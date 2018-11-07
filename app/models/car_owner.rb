class CarOwner

  @@all = []

  attr_reader :name
  attr_accessor :cars, :mechanics

  def initialize(name)
    @name = name
    @cars = []
    @mechanics = []
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_owned
    Car.all.select {|car| self.cars << car if car.owner == self}
    self.cars
  end

  def mechanics_used
    self.cars_owned.select {|car| self.mechanics << car.mechanic if car.owner == self}
    self.mechanics
  end

  def self.average_cars_owned
    average = Car.all.length / self.all.length
    average
  end

end
