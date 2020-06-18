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

def deposit_amount=(deposit_amount)
  @deposit_amount = deposit_amount
end 

def deposit(deposit_amount)
@balance << deposit_amount
  
#define_method(:deposit) do 
  #@balance += deposit_amount
 #end 
#end 
end 

#describe '#deposit' do ##define_method("deposit")
    #it "can deposit money into its account" do
     # expect(avi.balance).to eq(1000)
      #avi.deposit(1000)
     # expect(avi.balance).to eq(2000)

 #deposit
    #can deposit money into its account (FAILED - 1)
  #display_balance
    #can display its balance (FAILED - 2)
  #valid?
    #is valid with an open status and a balance greater than 0 (FAILED - 3)
  #close_account
   # can close its account (FAILED - 4)



end #class end 
