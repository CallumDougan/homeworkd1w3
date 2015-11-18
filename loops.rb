my_array = [1,false,'Barry',Time.now]

names = ["Barry", "Billy", "Boris"]

# FOR loop
for i in my_array # i = individual element and 'increment', identifier by convention fiat
  puts i
end

#WHILE loop

i = 0
my_num = 2
while i <= my_num do
  puts "name is #{names[i]}"
  i += 1
end

#UNTIL loop

x = 0

until x == 10
  puts x+= 1
end