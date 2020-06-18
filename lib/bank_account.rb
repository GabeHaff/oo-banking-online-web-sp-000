require 'pry'
class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  #expect: can transfer money to another BankAccount, using Transfer class.


def initialize(name, balance=1000, status="open")
  @name = name
  @balance = balance
  @status = status
  #@balance = 1000
  #@status = "open"
  
end 
#initializes w/name, balance of 1000, status of "open", name cannot be changed. 

 

def deposit(deposit_amount)
@balance+= deposit_amount
end 

def display_balance 
"Your balance is $#{@balance}."
end 
  
def valid? 
 @status == "open" && @balance > 0 
  end 

def close_account 
  @status = "closed"
end 
  
  #close_account
   # can close its account (FAILED - 4)



end #class end 
