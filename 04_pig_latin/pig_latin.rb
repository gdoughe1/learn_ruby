#write your code here
def translate str
	check = false
	count = 0
	vowels = ['a','e', 'i', 'o', 'u', 'y']
	pig = ""
	latin = ""
	vowels.each do |vowel|
		if str[0] == vowel
			str = str + "ay"
			break
		else
			str.each_char do |char|
				vowels.each do |vowel|
					if char == vowel
						check =  true
					else
						count += 1
					end
				end
				if check
					break
				end
			end
			
		end
	end
	pig = str.slice(count+1..str.length-1).to_s
	latin = str.slice(0..count).to_s
	str = pig+latin+"ay"		
end
