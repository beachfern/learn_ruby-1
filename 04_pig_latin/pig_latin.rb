#write your code here
# def translate input
def translate input
	vowels = "a e i o u y"
	output = []
	words = input.split
	words.each do |word|
		if vowels.include? word[0]
			output.push(word + "ay")
		elsif "qu".include? word[0..1].downcase and vowels.include? word[2]
			output.push(word[2..-1] + word[0..1] + "ay")
		elsif vowels.include? word[1]
			output.push(word[1..-1] + word[0] + "ay")
		elsif "qu".include? word[1..2].downcase
			output.push(word[3..-1] + word[0..2] + "ay")
		elsif vowels.include? word[2]
			output.push(word[2..-1] + word[0..1] + "ay")
		else
			output.push(word[3..-1] + word[0..2] + "ay")
		end
	end
	output.each do |word|
		if word != word.downcase
			word.downcase!
			word.capitalize!
		end
	end
	output.join(" ")
end
