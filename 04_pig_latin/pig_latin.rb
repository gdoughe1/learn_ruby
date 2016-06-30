#write your code here
def translate str
	#check = false
	vowels = ['a','e', 'i', 'o', 'y']
	pig = ""
	latin = ""
	sentence = str.split.to_a
	newSentence = []
	sentence.each do |str|
		check = false
		count = 0
		vowels.each do |vowel|
			if str[0] == vowel
				str = str + "ay"
				check = true
				break	
			end
		end
		if !check
			check = false
			str.each_char do |char|
				vowels.each do |vowel|
					if char == vowel
						check = true 
					end
				end
				if check
					break
				end
				count += 1			
			end	
			pig = str.slice(count..str.length-1).to_s
	 		latin = str.slice(0..count-1).to_s
			str = pig + latin + "ay"
		end
		newSentence.push(str)
	end
	newSentence.join(" ")
end
