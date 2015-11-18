def display_stats(stats)
  puts "Character is aged #{stats[:age]}, with #{stats[:health]} HP and #{stats[:magic]} mana."
end

display_stats({ health: 95, age: 96, magic: 2000 })

def say_in_spanish (english_word)
  english_to_spanish_dictionary = {
    hello: 'hola',
    goodbye: 'adios'
  }
  puts english_to_spanish_dictionary[english_word.to_sym]
end

say_in_spanish ('hello')