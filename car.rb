class Car
  attr_reader :model_name, :capacity
  attr_accessor :color

  @@models_available = []

  def initialize(color, model, capacity)
    @color = color
    @model_name = model
    @capacity = capacity
    @@models_available << model.downcase
  end

  def get_details
    puts "The details you have asked about #{@model_name} :"
    puts "Model name : #{model_name}\nColor : #{color}\nSeating capacity : #{capacity}"
  end    

  def self.model_available(model_name)
    @@models_available.include?(model_name.downcase)
  end
end

lambhorgini = Car.new('Red', 'lambhorgini', 5)

bmw = Car.new('Black', 'bmw', 4)

lambhorgini.get_details

bmw.color = 'Grey'

bmw.get_details

puts Car.model_available('ford')

puts Car.model_available('bMw')   

