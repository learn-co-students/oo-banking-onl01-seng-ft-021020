class BankAccount
  attr_accessor :balance
  attr_reader :name, :status
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amnt)
    @balance += amnt
  end
  
  def display_balance
    return "Your balance is $#{@balance}."
  end
  
  def valid?()
    self.status == "open" && self.balance > 0 ? true : false
  end
  
  def close_account
    @status = "closed"
  end
  
end
