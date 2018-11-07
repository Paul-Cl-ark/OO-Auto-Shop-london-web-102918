class Mechanic

  @@all = []

  attr_reader :name, :specialty
  attr_accessor :cars, :clients

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_serviced
    Car.all.select {|car| car if car.mechanic == self}
  end

  def customers
    self.cars_serviced.map {|car| car.owner if car.mechanic == self}.uniq
  end

  def customer_names
    self.customers.map {|customer| customer.name}.uniq
  end

end
