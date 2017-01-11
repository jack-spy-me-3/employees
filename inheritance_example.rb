class Vehicle
  def initialize(input_hash)
    @speed = input_hash[:speed]
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize(input_hash)
    super
    @fuel = input_hash[:fuel]
    @make = "Mercedes"
    @model = "123ACBD"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def initialize(input_hash)
    super
    @gears = input_hash[:gears]
    @type = input_hash[:type]
    @weight = input_hash[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(fuel: "diesel", speed: 5)
p car
car.accelerate
p car
car.honk_horn

bike = Bike.new(gears: 1, type: "road", weight: "10 lbs", speed: 1)
p bike
bike.accelerate
p bike
bike.ring_bell