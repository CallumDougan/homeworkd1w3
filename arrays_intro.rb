fruit = ['apple', 'banana', 'grape', 'orange']
fruit[1] = 'mango'
fruit[10] = 'peach'
#will return 'apple' and 'mango'
puts fruit.first(2)
#returns four * nil and 'peach'
puts fruit.last(5)
fruit.push('pear')
#puts nil, 'peach', 'pear', as .push has added object at end of current array
puts fruit.last(3)
fruit.pop
#puts 'peach' again, as .pop has taken the final object, 'pear', back off of the array
puts fruit.last
#'shovels' 'pear' to the end of the array
fruit << 'pear'
#removes first object, 'apple'
fruit.shift
#returns object
fruit.unshift('apple')
#reverses order
fruit.reverse
puts fruit
#randomly shuffles order (can add ! to apply to base array rather than 'making' temporary new one)
fruit.shuffle
#calls random element
fruit.sample
#checks content exists
fruit.any?
#checks array for existence of object
fruit.include?('apple')