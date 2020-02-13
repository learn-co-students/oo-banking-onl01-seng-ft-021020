class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(amnt)
    @balance += amnt
  end
  
  def withdraw(amnt)
    @balance -= amnt
  end
  
  def display_balance
    return "Your balance is $#{@balance}."
  end
  
  def transfer(receiver, transfer_amnt)
    receiver.deposit(transfer_amnt)
    withdraw(transfer_amnt)
  end
  
  # def valid?
  #   self.status == "open" && self.balance > 0 ? true : false
  # end
  
  def valid?
    @status == "open" && @balance > 0 ? true : false
  end
  
  def close_account
    @status = "closed"
  end
  
end
