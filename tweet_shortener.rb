def dictionary

  substitutions =
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)
  tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
      tweet.join(" ")
    end
  end
end



    #convert string to array
    #iterate over every word in the array
    #if a word matches a key replace it with the value
    #put the array back into a string and return the new string
