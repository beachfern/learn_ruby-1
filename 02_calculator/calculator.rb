#write your code here
def add num1, num2
  return num1.to_f + num2.to_f
end

def subtract num1, num2
  return num1.to_f - num2.to_f
end

def sum array
  total = 0
  array.each {|x| total += x}
  return total
end

def multiply(*nums)
  total = 1
  nums.each do |x|
    total *= x
  end
  return total
end

def power base, power
  return base ** power
end

def factorial num
  result = 1
  if num == 0
    result = 1
  elsif num >= 1
    while num > 0
      result *= num
      num -= 1
    end
  end
  return result
end
