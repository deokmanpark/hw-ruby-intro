# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  temp = 0
  arr.each do |elem|
    temp += elem
  end
  return temp
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length > 1
    max_1 = arr.min
    max_2 = arr.min
    arr.each do |elem|
      if elem > max_1
        max_1 = elem
      elsif elem > max_2
        max_2 = elem
      end
    end
    sum = max_1 + max_2
  elsif arr.length == 1
    return arr[0]
  else return 0
  end
  
  return sum 
  
end
def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  else
    if arr.combination(2).any? {|a, b| a + b == n}
      return true
    else
      return false
    end
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif s[0].match(/[^a-zA-Z0-9*]/)
    return false
  elsif s.upcase.start_with?('A','E','I','O','U')
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match(/[^01]/)
    return false
  elsif s.match(/[0-1]/) && s.to_i(2) % 4 == 0
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = Float(price)
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    format("$%.2f", @price)
  end
end