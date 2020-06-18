class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
  end 

def valid?
sender.valid? && receiver.valid?
end

def execute_transaction
 if self.valid? && sender.valid? && @amount < @sender.balance
 @sender.balance = @sender.balance - @amount
 @receiver.balance = @receiver.balance + @amount 
 self.status == "complete"
 elsif sender.valid? == false
   self.status == "rejected"
  
  #- can execute a successful transaction between two accounts (FAILED - 1)
   # each transfer can only happen once (FAILED - 2)
    #rejects a transfer if the sender does not have enough funds (does not have a valid account) (FAILED - 3)
  #the transaction from sender, add it to receiver account
  
  #reverse_transfer
   # can reverse a transfer between two accounts (FAILED - 4)
   # it can only reverse executed transfers 
end 
end

end #class end 


 #status = [:pending, :complete, :rejected, reversed]// status.pending? status.rejected? etc 

  #valid?
   # can check that both accounts are valid (FAILED - 10)
   # calls on the sender and receiver's #valid? methods (FAILED - 11)
  #execute_transaction
   # can execute a successful transaction between two accounts (FAILED - 12)
   # each transfer can only happen once (FAILED - 13)
   # rejects a transfer if the sender does not have enough funds (does not have a valid account) (FAILED - 14)
  #reverse_transfer
   # can reverse a transfer between two accounts (FAILED - 15)
   # it can only reverse executed transfers (FAILED - 16)

#goals:
#1:
#checks validity of bank acc; checks for funds(pending->complete)/insufficient funds(pending->rejected); || status = "complete" -> "reversed"

#2:
#default "status" = "pending"; status="pending"->status="complete" || status = "rejected";
#status= "completed" Transfer is able to be "reversed". 
#status = flag? default value that changes based on input/args?

