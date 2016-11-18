class Test
	def initialize
	end
	
	def test_public
		#private methods can be called within the class	
		test_private
	end
	
	private
		
	def test_private
		puts "This is private"
	end
end

test = Test.new

#this will work
test.test_public

#this won't work
#test.test_private
