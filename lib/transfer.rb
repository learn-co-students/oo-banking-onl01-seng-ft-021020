require "pry"

class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
    @transfer_count = 0
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction 
    if @sender.balance >= @amount && @transfer_count < 1 && @sender.status =="open" && @receiver.status == "open"
      @transfer_count += 1 
      @receiver.balance += @amount 
      @sender.balance -= @amount 
      @status = "complete"
      # binding.pry
    else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
    if @status == "complete"
      @receiver.balance -= @amount 
      @sender.balance += @amount 
      @status = "reversed"
    end 
  end 
  
  
end
