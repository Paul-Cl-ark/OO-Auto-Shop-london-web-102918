class Mechanic

  @@all = []

  attr_reader :name, :specialty
  attr_accessor :cars, :clients

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @cars =[]
    @clients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_serviced
    Car.all.select {|car| self.cars << car if car.mechanic == self}
    self.cars
  end

  def customers
      self.cars_serviced.select {|car| self.clients << car.owner if car.mechanic == self}
      self.clients
  end

  def customer_names
    self.customers.map {|customer| customer.name}
  end

end
