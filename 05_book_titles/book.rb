class Book
# write your code here
	#def initialize
	#	@title = ""
	#end
	def title=(name)
		
		fullTitle = name.split.to_a
		conjunction = ["for", "and", "but", "or", "yet", "so", "of", "in", "the", "a", "is", "an"]
		fullTitle.each do |word|
			check = true
			conjunction.each do |conj|
				if word == conj
					check = false
				end
			end
			if check or (word == fullTitle[0])
				word.capitalize!
			end
		end
		@title = fullTitle.join(" ")
	end
	def title
		@title
	end
end
