require "pry"

def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  hash
end

def word_substituter(str, hash = dictionary)
  newStr = ""
  arr = str.split(" ")
  #binding.pry
  arr.each do |x|
      if hash.has_key?(x)
        newStr += hash[x] + " "
      else
        newStr += x + " "
      end
  end
  newStr.chomp(" ")
end

tweet = "Hey guys, can anyone teach me how to be cool?"
tweets = [
  "Hey guys, can anyone teach me how to be cool?",
  "OMG you guys, you won't believe how sweet my kitten is.",
  "Hey guys, can anyone teach me how to be cool?",
  "OMG you guys, you won't believe how sweet my kitten is."
]
#word_substituter(tweet)

def bulk_tweet_shortener(arr, hash = dictionary)
  def first_meth(arr)
    arr.each do |str|
      x = yield str
      puts x
    end
  end
  first_meth(arr) do |str|
    newStr = ""
    arr = str.split(" ")
    #binding.pry
    arr.each do |x|
        if hash.has_key?(x)
          newStr += hash[x] + " "
        else
          newStr += x + " "
        end
    end
    newStr.chomp(" ")
  end

end

def selective_tweet_shortener(str, hash = dictionary)
  if str.size > 140
    newStr = ""
    arr = str.split(" ")
    #binding.pry
    arr.each do |x|
        if hash.has_key?(x)
          newStr += hash[x] + " "
        else
          newStr += x + " "
        end
    end
    newStr.chomp(" ")
  else
    str
  end

end

#selective_tweet_shortener(tweets)

def shortened_tweet_truncator(str, hash = dictionary)
  if str.size > 140
    newStr = ""
    arr = str.split(" ")
    #binding.pry
    arr.each do |x|
        if hash.has_key?(x)
          newStr += hash[x] + " "
        else
          newStr += x + " "
        end
    end
    short_tweet = newStr.chomp(" ")
    if short_tweet.size > 140
      trunc = short_tweet.slice(0..136) + "..."
      trunc
    end
  else
    str
  end
end
