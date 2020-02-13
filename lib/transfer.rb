class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, status = "pending", transfer_amnt)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = transfer_amnt
  end
  
  def valid?
    sender.valid? && receiver.valid? ? true : false
  end
  
  def execute_transaction
    if (valid? && sender.balance > amount) && self.status == "pending"
      sender.transfer(@receiver, amount)
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if (valid? && receiver.balance > amount) && self.status == "complete"
      receiver.withdraw(amount)
      sender.deposit(amount)
      self.status = "reversed"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
end
