class Car

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner=nil, mechanic=nil)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}.uniq
  end

  def specialised_mechanics(car_classification)
      Mechanics.all.select {|mechanic| mechanic if mechanic.specialty == car_classification}
  end
end
