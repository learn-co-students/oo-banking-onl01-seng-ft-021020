class Transfer
  # code here
  attr_accessor :sender, :receiver, :amount, :status, :count

  
  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
  
   def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end


  def reverse_transfer
    if @status == "complete"
      @sender.deposit( @amount ) 
      @receiver.deposit( @amount * -1)
      @status = "reversed"
    end
  end


  def execute_transaction
    if valid? && (@sender.balance > @amount) && !(@status == "complete")
     @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
    elsif @status == "complete"
      puts "Transaction was already excuted"
   else
       @status = "rejected"
      return "Transaction rejected. Please check your account balance."

    end
  end

end