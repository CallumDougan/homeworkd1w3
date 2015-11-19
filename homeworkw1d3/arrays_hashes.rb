#section A

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

puts "Section A begins..."
puts "\nTotal lines: #{lines.size}"
puts "Example line: #{lines[1]}"
puts "\nCalling Princes Street..."

puts lines[4]

puts lines[-1]

i = 4
my_num = 4
  while i >= my_num do
  puts lines[i]
  i -= 1
  end

puts "\nPrinces Street called 3 times."

puts "\nEvaluating position of Haymarket..."
puts "Haymarket is at position #{lines.index("Haymarket")}."

puts "\nAdding Airport..."
lines.unshift('Airport')
puts "Airport added at position #{lines.index("Airport")}."

puts "\nAdding York Place..."
lines.push("York Place")
puts "York Place added at position #{lines.index("York Place")}."
ep = lines.index("Edinburgh Park")
lines.delete_at(ep)
puts "\nRemoving Edinburgh Park..."
lines.delete("Edinburgh Park")
puts "Making sure, it's really quite bad..."
puts "Thank God that's gone."

puts "\nReversing stops order..."
lines.reverse!
puts "Lines reversed.  All trains redirected via Mull."

puts "\nFinal array:\n\n"
  for i in lines
    puts "Stops at #{i}"
  end

puts "\n\n"

z = 0
  until z==lines.length
    puts "Stops at #{lines[z]}"
    z+=1
  end

puts "\n\n"
z = 0
  while z < lines.length
    puts "Stops at #{lines[z]}"
    z+=1
  end

puts "\n\n"
z = 0
  loop do
    puts "Stops at #{lines[z]}"
    z+=1
    break if z == lines.length
  end

puts "\nSection A now ends."

#section B

puts "\n\nSection B now begins..."

my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts "\nLocated '#{my_hash[1]}'."

puts "\nLocated '#{my_hash[:two]}'."

puts "\nLocated '#{my_hash["two"]}'."

puts "\nAll required values located."

puts "\nInserting values..."
my_hash[3] = "Three"
my_hash[:four] = 4
puts "All values inserted."
puts "\nFinal hash:"
    puts my_hash

puts "\nSection B ends."
#Section C
puts "\n\nSection C begins..."

users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favorite_numbers => [8, 12, 24],
      :home_town => "Linithgow",
      :pets => {
        "blinky" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "fang" => :parrot
      }
    },
    "Anil" => {
      :twitter => "bridgpally",
      :favorite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        :colin => :snake
      }
    },
  }

  puts "\n\nJonathan's Twitter handle is: @#{users["Jonathan"][:twitter]}."

  puts "\nErik's hometown is #{users["Erik"][:home_town]}: his favourite numbers are #{users["Erik"][:favorite_numbers]}."

  puts "\nAnil's pet Colin is a #{users["Anil"][:pets][:colin]}."

  puts "\nErik's smallest favorite number  #{users["Erik"][:favorite_numbers].sort[0]}"

  users["Anil"][:favorite_numbers][2] = nil
  users["Anil"][:favorite_numbers].compact!
  puts "\nAnil's favorite even numbers are #{users["Anil"][:favorite_numbers]}."

  jnums = users["Jonathan"][:favourite_numbers]
  puts "\nJonathan's favourite numbers are #{jnums.uniq.sort}."

 users["Erik"][:favorite_numbers].insert(1, 7)
 puts "\nErik's favorite numbers updated."

 users["Erik"][:home_town].replace("Edinburgh")
 puts "\nErik's hometown is now #{users["Erik"][:home_town]}."



