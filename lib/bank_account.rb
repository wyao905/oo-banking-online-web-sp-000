require 'pry'

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    binding.pry
    balance = balance + amount
  end
  
  def update(s)
    binding.pry
    status = s
  end
end