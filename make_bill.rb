#program to make a bill

orders = {}

puts "Enter the food menu you have ordered:"

while (true) do
	f_item = gets.chomp
	
	break if f_item.downcase == "exit"

	puts "Enter the price of the order:"
	f_price = gets.chomp.to_i

	orders[f_item] = f_price

	puts "Enter the food item or type exit to generate a bill:"
end

tot = 0
orders.each do |f_item, f_price|
	puts "#{f_item}: #{f_price}"
	tot += f_price
end

puts "Enter the tax rate:"
tax_rate = gets.chomp

puts "Calculating tax..."
tax= tot*tax_rate.to_f/100
tot_price = tot + tax
puts "Total: #{tot_price}"


