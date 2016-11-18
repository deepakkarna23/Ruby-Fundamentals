class Order
	attr_accessor :item, :price

	def initialize(item, price)
		@item = item
		@price = price
	end
end

class BillCalculator
    attr_accessor :total_price, :orders
    
	def initialize
		@total_price = 0
		@orders = []
	end

	def input_orders
		puts "Enter the food menu you have ordered:" 
		while(true) do
			order = gets.chomp
			break if order.downcase == "exit"

			puts "Enter the price of the order:"
			price = gets.chomp.to_i

			@orders << Order.new(order, price)

			puts "Enter another food item or type exit to generate a bill:"
		end
	end

	def calculate_total_price
		calculate_before_tax
		calculate_tax
		calculate_after_tax 

		puts "Total: #{@total_price}"  
	end

	private

	def calculate_before_tax
		@orders.each do |order|
			puts "#{order.item}: #{order.price}"
			@total_price += order.price
		end
	end
	
	def calculate_tax
		puts "Enter the tax rate:"
		tax_rate = gets.chomp.to_i

		puts "Calculating tax..."
		@tax_amount = @total_price * tax_rate.to_f/100
	end
	
	def calculate_after_tax
		@total_price += @tax_amount		
	end
end

bill_calculator = BillCalculator.new
bill_calculator.input_orders
bill_calculator.calculate_total_price





