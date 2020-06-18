require 'pry'
class BankAccount
  attr_reader :name
  attr_accessor :balance, :status, :deposit_amount
  #expect: can transfer money to another BankAccount, using Transfer class.


def initialize(name, balance=1000, status="open")
  @name = name
  @balance = balance
  @status = status
end 
#initializes w/name, balance of 1000, status of "open", name cannot be changed. 

 

def deposit(deposit_amount)
@balance+= deposit_amount
end 

def display_balance 
  puts "Your balance is $#{self.balance}."
end 
  #display_balance
    #can display its balance (FAILED - 2)
  #valid?
    #is valid with an open status and a balance greater than 0 (FAILED - 3)
  #close_account
   # can close its account (FAILED - 4)



end #class end 
