# takes a string as the 1st argument & an array of substrings as the 2nd argument
# return a hash listing each substring that was found & how many times it was found
def substrings(string, array)
  result = Hash.new(0)
  array.select do |substring|
    if string.include?(substring)
        result["#{substring}"] += 1
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)