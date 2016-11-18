class FooBar
	attr_accessor :num, :list
	
	def initialize	
		@num = num
	end

	def inp
		puts "How many numbers do you want to see?"
		@num = gets.chomp.to_i
	end	

	def listprint
		@list = []

		(1..@num).each do |n|
  			if n % 3 == 0 && n % 5 == 0
    				@list << "Foobar"
  			elsif n % 3 == 0
    				@list << "Foo"
  			elsif n % 5 == 0
    				@list << "Bar"
  			else
				@list << n
	  		end
		end
		
		puts @list
	end
end
 
plist = FooBar.new
plist.inp
puts "--------------------------"
puts "Your list"
puts "--------------------------"
plist.listprint

