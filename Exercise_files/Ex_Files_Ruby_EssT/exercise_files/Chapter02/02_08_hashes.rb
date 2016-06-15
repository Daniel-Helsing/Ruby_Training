# This file is a transcript of the IRB session shown in the movie.
# You should be able to cut and paste it into IRB to get 
# the same results shown in the comments.

# irb
person = ['Kevin', "Skoglund", 'male', 'blue', 'blonde']
# => ["Kevin", "Skoglund", "male", "blue", "blonde"]
person = { 'first_name' => 'Kevin', 'last_name' => 'Skoglund' } 
# => {"first_name"=>"Kevin", "last_name"=>"Skoglund"}
person['first_name']
# => "Kevin"
person['last_name']
# => "Skoglund"
person.index('Kevin')
# => "first_name"
mixed = {1 => ['a', 'b', 'c'], 'hello' => 'world', [10,20] => 'top'}
# => {[10, 20]=>"top", 1=>["a", "b", "c"], "hello"=>"world"}
mixed
# => {[10, 20]=>"top", 1=>["a", "b", "c"], "hello"=>"world"}
mixed[1]
# => ["a", "b", "c"]
mixed[[10,20]]
# => "top"
mixed.keys
# => [[10, 20], 1, "hello"]
mixed.values
# => ["top", ["a", "b", "c"], "world"]
mixed.length
# => 3
mixed.size
# => 3
mixed.to_a
# => [[[10, 20], "top"], [1, ["a", "b", "c"]], ["hello", "world"]]
mixed.clear
# => {}
mixed = {}
# => {}
person
# => {"first_name"=>"Kevin", "last_name"=>"Skoglund"}
person['gender'] = 'male'
# => "male"
person
# => {"gender"=>"male", "first_name"=>"Kevin", "last_name"=>"Skoglund"}
quit
