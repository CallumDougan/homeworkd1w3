address_book = [
{
  'name' => 'Jay',
  'number' => '01411111111'
},
{
  'name' => 'Barry',
  'number' => '01412222222'
},
{
  'name' => 'Michael',
  'number' => '01413333333'
}
]

#PRINT TO CONSOLE EACH NUMBER AND NUMBER OF ALL CONTACTS
for contact in address_book
  puts "\nThe number for #{contact['name']} is: #{contact['number']}"
end