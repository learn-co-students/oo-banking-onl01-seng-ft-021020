class BankAccount
  @@all = []
  attr_accessor :balance, :status
  
  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = 1000
    @status = status
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def name
    @name
  end
  
  def deposit(money)
    @balance += money
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    if self.balance > 0 && self.status == "open"
      true 
    else 
      false 
    end
  end
  
  def close_account
    self.status = "closed"
  end
end
