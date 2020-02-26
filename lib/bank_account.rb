require 'pry'
class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  @@all =[]
  
  def initialize(name)
    @name = name
    @status = 'open'
    @balance = 1000
    @@all << self 
  end 
  
  def deposit(money)
    @balance += money
  end 
  
  def display_balance
    return "Your balance is $#{@balance}."
  end 
  
  def valid?
    if self.status == "open" && self.balance > 0
      return true
    else 
      return false 
    end 
  end 
  
  def close_account 
    @status = "closed"
  end 
  
  def self.all 
    @@all
  end 
  
end
