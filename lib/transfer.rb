class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if sender.valid? == true && receiver.valid? == true
      true
    else
      false
    end
  end
  
  def execute_transaction
    if valid? == false
      return "Transaction rejected. Please check your account balance."
    elsif status == "pending"
      sender.deposit(-amount)
      receiver.deposit(amount)
      self.status = "complete"
    end
  end
end