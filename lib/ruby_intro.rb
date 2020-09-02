# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #Temp sum
  temp = 0
  #Go through each element named elem and add the value to temp sum
  arr.each do |elem|
    temp += elem
  end
  return temp
end

def max_2_sum arr
  # YOUR CODE HERE
  #check to make sure the length is greater than 1
  if arr.length > 1
    #Assign the minimum value to the max comparators
    max_1 = arr.min
    max_2 = arr.min
    #Go through each element in arr to get the maximum
    arr.each do |elem|
      if elem > max_1
        max_1 = elem
      elsif elem > max_2
        max_2 = elem
      end
    end
    #Add the two maximums together
    sum = max_1 + max_2
  #If the length is 1, return the only element
  elsif arr.length == 1
    return arr[0]
  #If the length is 0, return 0
  else return 0
  end
  
  return sum 
  
end
def sum_to_n? arr, n
  #Check the length and return false if zero
  if arr.length == 0
    return false
  else
    #Otherwise, combine any two in array and check if their sum is equal to n
    if arr.combination(2).any? {|a, b| a + b == n}
      return true
    else
      return false
    end
  end
end

# Part 2

def hello(name)
  #Return concat of hello and name
  return "Hello, " + name
end

def starts_with_consonant? s
  #Check if the string is empty
  if s.empty?
    return false
  #Check if the first character is not an alphabet
  elsif s[0].match(/[^a-zA-Z*]/)
    return false
  #Check if the string s starts with AEIOU
  elsif s.upcase.start_with?('A','E','I','O','U')
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  #Check if s has only 0 and 1
  if s.match(/[^0-1]/)
    return false
  #Check if s only has 0 and 1 and is divisble by 4
  elsif s.match(/[0-1]/) && s.to_i(2) % 4 == 0
    return true
  end
end

# Part 3

class BookInStock
  #Initialize the class with isb and price
  def initialize(isbn, price)
    #Arugment Error if isbn is empty or if price is less than $0
    raise ArgumentError if isbn.empty? || price <= 0
    #Define the variables
    @isbn = isbn
    @price = Float(price)
  end
  #The accessors for isbn and price
  attr_accessor :isbn
  attr_accessor :price
  #Returns price with $ and with 2 floating point precision
  def price_as_string
    format("$%.2f", @price)
  end
end