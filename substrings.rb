# 1) take a string and an array of substrings
# 2) return a hash with each substring and its respective count
def substrings(word, dictionary)
  counts = {} # accumulator hash
  if word.include?(" ") # account for when there are spaces in the given string
    split = word.split(" ")
    split.each do |i|
      dictionary.each do |j|
        if i.include?(j)
          counts.has_key?(j) ? counts[j] += 1 : counts[j] = 1
        end
      end
    end
  else # account for when the given string has no spaces...
    dictionary.each do |sub|
      if word.include?(sub)
        counts.has_key?(sub) ? counts[sub] += 1 : counts[sub] = 1
      end
    end
  end
  counts # return the final counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
