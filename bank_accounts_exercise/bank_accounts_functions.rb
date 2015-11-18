ACCOUNTS = [
  {
    holder_name: "Jay",
    amount: 55,
    type: "business"
  },
  {
    holder_name: "Rick",
    amount: 1,
    type: "personal"
  },
  {
    holder_name: "Keith",
    amount: 500,
    type: "business"
  },
  {
    holder_name: "Valerie",
    amount: 100,
    type: "personal"
  },
  {
    holder_name: "Michael",
    amount: 5,
    type: "personal"
  },
  {
    holder_name: "Kate",
    amount: 2000,
    type: "business"
  },
  {
    holder_name: "Tony",
    amount: 150,
    type: "personal"
  },
  {
    holder_name: "Sandy",
    amount: 4500,
    type: "business"
  },
]

def number_of_bank_accounts()
  ACCOUNTS.length
end

def first_bank_account_holder()
  ACCOUNTS[0][:holder_name]
end

def print_owner_names()
  for name in ACCOUNTS
    puts name[:holder_name]
  end
end

def total_cash_in_bank()
  ACCOUNTS.map{|x| x[:amount]}.reduce(:+)
end

def last_bank_account_holder()
  ACCOUNTS[-1][:holder_name]
end

def average_bank_account_value()
  total_cash_in_bank / ACCOUNTS.length
end

def total_cash_in_business()
 acbiz = ACCOUNTS.select{|x| x[:type]}
 return acbiz
 
end

def largest_account_in_bank()
  values = ACCOUNTS.sort_by { |hsh| hsh[:amount] }
  return values.pop[:holder_name]
end