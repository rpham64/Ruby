string = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

for index in dictionary
	puts "#{index}: " + string.downcase.scan(/#{index}/).count.to_s
end