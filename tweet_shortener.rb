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
  updated_words = tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end
  updated_words.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |tweets|
    puts word_substituter(tweets)
  end
end
