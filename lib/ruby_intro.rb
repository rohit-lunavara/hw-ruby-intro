# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  res = 0
  arr.each {
    |x|
    res += x
  }
  return res
end

def max_2_sum arr
  if arr.size <= 1
    return arr[0] || 0
  end
  num1 = arr.max
  arr.delete_at arr.index num1
  num2 = arr.max
  return num1 + num2
end

def sum_to_n? arr, n
  dict = {}
  arr.each_with_index {
    |i, j|
    if dict[n - i]
      return true
    end
    dict[i] = j
  }
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  ns = s.downcase
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  consonants.each {
    |x|
    if ns[0] == x
      return true
    end
  }
  return false
end

def binary_multiple_of_4? s
  begin
    num = Integer(s, 2)
  rescue => exception
    return false
  end
  return num%4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn == ''
      raise ArgumentError
    else
      @isbn = isbn
    end

    if price <= 0 
      raise ArgumentError
    else
      @price = price
    end
  end

  public
  def price_as_string
    return "$%0.2f" %self.price
  end
end