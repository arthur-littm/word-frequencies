def most_frequent_word(string)
  hash = {}
  my_array = string.downcase.split(" ")

  my_array.each do |word|
    # is the word already in the hash (has_key?)
    clean_word = word.gsub(("!".."/").to_a.join, "")
    if hash.has_key?(clean_word)
      # if yes increment by one
      hash[clean_word] += 1
    else
      # else
      # add the new clean_word and start at one
      hash[clean_word] = 1
    end
  end

  frequent = hash.sort_by do |key, value|
    -value
  end

  return frequent.first(3).to_h

end

# => {"the" => 10, "in" => 8, "a" => 5}
