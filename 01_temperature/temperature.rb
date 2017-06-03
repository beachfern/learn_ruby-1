#write your code here
def ftoc temp
  #Deduct 32, then multiply by 5, then divide by 9
  return (temp.to_f - 32) * 5 / 9
end

def ctof temp
  #Multiply by 9, then divide by 5, then add 32
  return temp.to_f * 9 / 5 + 32
end
