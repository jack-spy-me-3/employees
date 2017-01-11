class Item
  def initialize(input_hash)
    @name = input_hash[:name]
    @price = input_hash[:price]
  end
end

class Food < Item
  def initialize(input_hash)
    super
    @shelf_life = input_hash[:shelf_life]
  end
end

item = Item.new(name: "Not Food", price: 10000)
food = Food.new(name: "In-N-Out Burger", price: 3, shelf_life: 1)
p item
p food