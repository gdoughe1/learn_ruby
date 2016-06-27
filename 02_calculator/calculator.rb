#write your code here
def add num1, num2
	sum = num1 + num2
end

def subtract num1, num2
	sum = num1 - num2
end

def sum array
	sum = 0
	array.each do |num|
	sum += num
	end
	sum
end

def multiply array
	prod = 1 
	array.each do |num|
	prod = prod * num
	end
	prod
end

def power num1, num2 
	pow = num1 ** num2
end

def factorial num
	array = []
	num.times do |iter|
		array.push(iter+1)
	end
	prod = multiply array
end
