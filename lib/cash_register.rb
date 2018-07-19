require "pry"

class CashRegister

attr_accessor :discount, :total, :items, :last_transaction

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, qty=1)
  self.total += price*qty.to_f
  qty.times do
    items << title
  end
  self.last_transaction = price * qty.to_f
end

def apply_discount
  if @discount != 0
    self.total = total*(1-0.01*discount.to_f)
    "After the discount, the total comes to $#{total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  self.total -= self.last_transaction
end


end
