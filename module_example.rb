module VehicleMovement
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 20
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include VehicleMovement
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include VehicleMovement
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new()
p car
car.accelerate
p car