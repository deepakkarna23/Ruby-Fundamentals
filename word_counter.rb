#program to count words in sentence

#sentence input
puts "Enter a sentence:"
sent = gets.chomp

#splitting the sentence
splitsent = sent.split

#count number of word
#num_of_word = splitsent.count

#initialize hash as 0
freq = Hash.new(0)

#Assign each word to hash with value as per repeat
splitsent.each do |word|
	freq[word.downcase] +=1
end

puts"Counting Words..."
puts"------------------------------------"

#print each word of hash and its number of times present in sentence 
freq.each do |key, value|
	puts "#{key} appeared #{value} times in this sentence."
end


	

 






