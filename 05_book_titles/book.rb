class Book
# write your code here
  attr_accessor :title
  def title
    never_capitalize = "the a an and in on up to of over or"
    final = []
    original = @title.downcase.split
    original.each do |word|
      if word == "i"
        final.push(word.upcase)
      elsif never_capitalize.include? word
        final.push(word)
      else
        final.push(word.capitalize)
      end
      final[0].capitalize!
    end
    final.join(" ")
  end
end
