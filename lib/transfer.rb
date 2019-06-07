require 'pry'

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
    sender.deposit(-amount)
    if valid?
      if status == "pending"
        receiver.deposit(amount)
        self.status = "complete"
      end
    else
      return "Transaction rejected. Please check your account balance."
    end
  end
end