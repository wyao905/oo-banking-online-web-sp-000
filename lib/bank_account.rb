class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    self.balance = balance + amount
  end
  
  def display_balance
    "Your balance is $#{balance}."
  end
  
  def valid?
    if self.status == "open"
      true
    else
      false
    end
  end
end