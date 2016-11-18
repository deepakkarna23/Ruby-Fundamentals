class Order
	attr_reader :item, :price
	def initialize(item, price)
		@item = item
		@price = price
	end
end

order = Order.new("Pizza", 200)

puts order.inspect

order_2 = Order.new("Tea", 20)

puts order_2.inspect



