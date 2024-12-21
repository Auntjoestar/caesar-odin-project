def substrings(string, array)
  string_array = string.split(' ')
  matches = array.reduce(Hash.new()) do |substrings, substring|
    filtered_strings = string_array.filter_map {|string| string if string.downcase.include?(substring.downcase)}
    substrings[substring] = filtered_strings.length if filtered_strings.length > 0
    substrings
  end
  p matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
