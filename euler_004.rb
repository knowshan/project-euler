#!/usr/bin/env ruby 

# Problem: http://projecteuler.net/index.php?section=problems&id=4

def is_palindrome(teststring)
	return true if teststring.to_s == teststring.to_s.reverse
	return false
end

def palindrome_product(startnum,endnum)
  producta = Array.new
	
	startnum.upto(endnum) do |i|
		i.upto(endnum) do |j|
			product = i*j
			producta << product if is_palindrome(product)
		end
	end
	return producta
end

# Generate min. and max. numbers limit 
def min_range (digits)
	starta = ["1"]
	1.upto(digits-1) do |i|
		starta.insert(i,0)
	end
  return starta.to_s.to_i
end
	
def max_range (digits)
  enda = Array.new  
  1.upto(digits) do |i|
		enda.insert(i,9)	
	end
  
	endnum = enda.to_s.to_i
end

# Get input - no. of digits - from user
def get_input
  print "Program to find largest palindrome product of two numbers in the same digits range. \n" 
  print "See http://projecteuler.net/problem=4 for complete problem statement. \n"
  print "Largest palindrome number of x digit numbers: "
  digits = gets.to_i
end

# Method calls 
digits = get_input
min_num = min_range(digits)
max_num = max_range(digits) 
palindrome_product = palindrome_product(min_num, max_num)
max_palidrome_product = palindrome_product.max

puts "Largest palindrome product: #{max_palidrome_product}"
