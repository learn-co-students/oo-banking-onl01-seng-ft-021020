class Transfer
  
  def initialize(sender, receiver, transfer_amnt)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @transfer_amnt = transfer_amnt
  end
  
end
