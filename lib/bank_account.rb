require 'pry'
class BankAccount
  attr_reader :name
attr_accessor :BankAccount, :balance, :status

def initialize(name) 
 # binding.pry
   @name = name 
  @bank_account 
  @balance = 1000
  @status = "open"
end 

def deposit(amount) 
  self.balance += amount
end

def display_balance 
  "Your balance is $#{self.balance}."
end

def valid?
  balance > 0 &&  status == "open"
end

def close_account
  self.status = "closed"
 # binding.pry
end

end
