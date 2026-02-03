# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
# Initialize a hash to store balances, defaulting to 0
balances = {}

# Iterate through each transaction in the blockchain
blockchain.each do |transaction|
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
  amount = transaction["amount"]

  # If there is a sender (not an ICO), subtract the amount from their balance
  if from_user
    balances[from_user] = (balances[from_user] || 0) - amount
  end

  # Add the amount to the recipient's balance
  balances[to_user] = (balances[to_user] || 0) + amount
end

# Print the results in the requested format
puts "Ben's KelloggCoin balance is #{balances["ben"]}"
puts "Brian's KelloggCoin balance is #{balances["brian"]}"
puts "Evan's KelloggCoin balance is #{balances["evan"]}"
puts "Anthony's KelloggCoin balance is #{balances["anthony"]}"