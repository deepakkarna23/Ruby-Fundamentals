#program to make a bill

orders = {}

puts "Enter the food order:"
f_order = gets.chomp

puts "Enter the price of food:"
f_price = gets.chomp

while true do
	puts "Enter the order or type exit to generate a bill"
	f_order = gets.chomp
	break if f_order.downcase == "exit"	
	puts "Enter the price of order:"
	f_price = gets.chomp
	
	orders[f_order] = f_price
end

tot=0
orders.each do |f_order, f_price|
	puts "#{f_order}: #{f_price}"
end

tot += f_price
puts "Enter the tax rate:"
tax_r=gets.chomp

tax= tot*tax_r/100
tot_p=tot+tax
puts "Total: #{tot_p}"







