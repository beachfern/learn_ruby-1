#write your code here
def echo input
  input
end

def shout input
  input.upcase
end

def repeat input, times=2
  result = input
  (times-1).times do
    result = result + " " + input.to_s
  end
  result
end

def start_of_word input, letters
  array = input.split(//)
  return array.shift(letters).join
end

def first_word input
  array = input.split(" ")
  array[0]
end

def titleize title
  array = title.split(" ")
  newarray = []
  newarray.push(array[0].capitalize)
  array.delete_at(0)
  array.each { |word|
    if word ==  "over" or word == "the" or word == "and"
    newarray.push(word)
    else
      newarray.push(word.capitalize)
    end
  }
  return newarray.join(" ")
end
