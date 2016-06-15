# This file is a transcript of the IRB session shown in the movie.
# You should be able to cut and paste it into IRB to get 
# the same results shown in the comments.

# irb
name = "Kevin"
# => "Kevin"
if name == "Bob"
  puts "Found Bob!"
else
  puts "Not Bob..."
end
# Not Bob...
# => nil
if name == "Kevin"
  puts "Found Kevin!"
else
  puts "Not Kevin..."
end
# Found Kevin!
# => nil
if name == "Bob"
  puts "Found him"
elsif name == "Mary"
  puts "Found her"
else
  puts "Not Bob or Mary"
end
# Not Bob or Mary
# => nil
puts "This is Kevin" if name == "Kevin"
# This is Kevin
# => nil
puts "This is Kevin" if name == "bob"
# => nil
quit
