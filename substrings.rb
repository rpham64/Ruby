# Ruby Project 3: Substrings
# Name: Rudolf Pham

def substrings(string, dictionary)

	frequencies = {}
	string.downcase!

	for index in dictionary
		count = string.scan(/#{index}/).count
		if count != 0
			frequencies[index] = count
		end
	end
	puts frequencies
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)