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
    binding.pry
    if valid? == true
      if status == "pending"
        sender.deposit(-amount)
        receiver.deposit(amount)
        self.status = "complete"
      end
    else
      return "Transaction rejected. Please check your account balance."
  end
end