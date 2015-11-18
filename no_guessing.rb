my_number = 5

puts "What number am I thinking of? "
their_number = gets.to_i

until
  their_number == my_number
  
  if 
    their_number > my_number
    print "#{their_number} is too high!  Try lower? "
  elsif 
    their_number < my_number
    print "#{their_number} is too low!  Try higher? "
  end
  their_number = gets.to_i
end

print "#{their_number} is correct.  Lucky guess, meatbag."