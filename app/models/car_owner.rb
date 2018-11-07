class CarOwner

  @@all = []

  attr_reader :name
  attr_accessor :cars, :mechanics

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_owned
    Car.all.map {|car| car if car.owner == self}
  end

  def mechanics_used
    Car.all.map {|car| car.mechanic if car.owner == self}.uniq
  end

  def self.average_cars_owned
    average = Car.all.length.to_f / self.all.length
    average
  end

end
