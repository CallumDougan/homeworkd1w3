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
  for account in ACCOUNTS
    puts account[:holder_name]
  end
end

def total_cash_in_bank()
  ACCOUNTS.map{|x| x[:amount]}.reduce(:+)
end

def last_bank_account_holder()
  ACCOUNTS[-1][:holder_name]
end

def average_bank_account_value()
  average_value = total_cash_in_bank / ACCOUNTS.length.to_f
  average_value.round(2)
end

def total_cash_in_business()
  total_cash = 0

  for account in ACCOUNTS
    if account.has_value?("business")
      total_cash += account[:amount]
    end
  end
    total_cash
end

def total_cash_alt(type = nil)
total_cash = 0
  #feeds in type from runner; if no type, acts unrestricted, otherwise only adds account[:amount] if [:type] matchs type fed from runner
  for account in ACCOUNTS
    total_cash = total_cash + account[:amount] if !type || account[:type] == type
  end
  total_cash
end

def largest_account_in_bank()
ACCOUNTS.max_by{|x| x[:amount]}
end

def largest_account_in_bank_alt()
#resets value to 'biggest' to zero, so as to build comparisons
biggest = 0
#compares each entry's [:amount] value to biggest - each iteration ends with larger value, ergo ends on largest of all
 for i in ACCOUNTS
  #can entirely skip i[:amount] when < biggest
  if i[:amount] > biggest
    biggest = i[:amount]
    richest = i[:holder_name]
  end
end
richest
end

def largest_personal_account_in_bank()
  ACCOUNTS.select{|x| x[:type] == "personal"}
     .max_by{|x| x[:amount]}
end


def largest_personal_alt
  max = 0
  account_holder = ""
  for account in ACCOUNTS
    if account[:type] == 'personal' && account[:amount] > max
      max = account[:amount]
      account_holder = account[:holder_name]
    end
  end
  account_holder
end