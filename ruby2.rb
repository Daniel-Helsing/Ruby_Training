def welcome
  puts "Hello World!"
end

def add(v1=0, v2=0)
  return v1 + v2
end

# Global, class and instance variables are available
# inside a method's scope
@words = ['apple', 'pear', 'banana', 'plum']

def longest_word
  longest_word = @words.inject do |memo,word|
    memo.length > word.length ? memo : word
  end
  puts longest_word
end

def over_five?
  # local variables inside a method are LOCAL to the method
  # They don't "pull in" local variables (unlike blocks).
  # They don't persist once the method is done.
  value = 3
  puts value > 5 ? 'Over 5' : 'Not over 5'
end

welcome
add(3,4)
longest_word
over_five?