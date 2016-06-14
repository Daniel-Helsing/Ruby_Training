array = [1,2,3,4,5]
	array.collect{|num| num+1}

array2 = [3,1,5,2,4]
array2.sort{|v1,v2| v1 <=> v2 }

fruits = ['banana', 'apple'. 'orange','pear']
fruits.sort
fruits.sort_by{|fruit| fruit.length}

array3 = [*1..10]
sum= array3.inject {|memo, n| memo +n}
sum= array3.inject(100){|memo, n| memo+n}
