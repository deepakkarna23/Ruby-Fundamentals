class Card
	attr_accessor :ranks, :suits, :colors
	def initialize(ranks, suits)
		@ranks = ranks
		@suits = suits
		if @ranks == 'Clubs' || @ranks == 'Spades'
			@colors = 'Black'
		else
			@colors = 'Red'
		end
	end
	
	def to_s
		"Card: #{@colors} #{@ranks} of #{@suits}"
	end
end

class Deck

	def initialize
		@ranks = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
		@suits = %w{Spades Hearts Diamonds Clubs}
		@cards = []

		@ranks.each do |rank|
			@suits.each do |suit|
				@cards << Card.new(rank, suit)
			end
		end
	end
     
	def shuffle!
		@cards.shuffle!
	end

	def selection
        	@cards.sample
    	end
    
	def deal
		@cards.pop
	end    
	
	def rem
		@cards.length
	end
end
 
my_deck = Deck.new
my_deck.shuffle!
my_deck.selection
my_deck.deal
my_deck.rem
puts my_deck.selection
puts "Remaining cards after selection #{my_deck.rem}"


