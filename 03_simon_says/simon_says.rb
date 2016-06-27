#write your code here
def echo str
	str
end

def shout str
	str.upcase
end

def repeat str, num=2
	rep = str
	(num-1).times do
		str = str + " " + rep
	end
	str
end

def start_of_word str, num
	str[0, num]
end

def first_word str
	array = str.split.to_a
	array[0]
end

def titleize str
	little = ["the", "and", "over"]
	check = true
	array = str.split.to_a
	array.each do |str|
		little.each do |small|
			if(str == small)
				check = false
			end
		end
		if str == array[0]
			str.capitalize!
		end
		if check
			str.capitalize!
		end
		check = true
	end
	finished = array.join(" ").to_s
end
