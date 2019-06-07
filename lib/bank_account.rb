require 'pry'

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    binding.pry
  end
  
  def deposit(amount)
    binding.pry
    balance = balance + amount
  end
  
  # def display_balance
    
end