class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount, status ="pending")
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      return true 
    else 
      return false 
    end 
  end

  def execute_transaction
    if @sender.balance < @amount || !self.valid?
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif status == "complete"
    else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = 'reversed'
    else
    end
  end
end