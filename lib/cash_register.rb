require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@cart = []
  end
  
  def add_item (title, price, items=1)
    self.total += price * items
    self.last_transaction = price * items
    items.times do 
     @@cart << title
  end
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  end
    self.total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end 
  
  def items
    @@cart
  end
  
  def void_last_transaction
   self.total -= self.last_transaction
  end
end