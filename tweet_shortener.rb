# Write your code here.

def dictionary
  {
  "helllo" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "for" => "4",
  "four" => "4",
  "For" => "4"
}
end

def word_substituter(tweet)
  array = tweet.split(" ")
  array.each_with_index do |word, index|
    dictionary.each do |key, value|
      if word == key
        array[index] = value
      end
    end
  end
   array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    short_tweet = "#{short_tweet[0..136]}..."
  end
  short_tweet
end








#fdslkf
