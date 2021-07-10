class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def steer(wheels= "2 wheels")
    puts "Turn front #{wheels}."
  end

  def mileage
    @odometer / @gas_used
  end
end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
end

truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}"
truck.accelerate
truck.steer

car = Car.new
car.odometer = 11432
car.gas_used = 366
puts "Lifetime MPG:\n#{car.mileage}"

motorcycle = Motorcycle.new
motorcycle.steer("wheel")

