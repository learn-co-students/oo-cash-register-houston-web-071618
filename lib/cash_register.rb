require 'pry'

class CashRegister
  attr_reader :discount
  attr_accessor :total

  def initialize(discount = 0 )
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end

  def total
   total = @total
   total
  end

  def add_item(title, price, quantity = 1)
    add = price * quantity
    prev_total = @total
    @total += add
    quantity.times do
       @prices << price
       @items << title
    end
  end


  def apply_discount
  if @discount != 0
    discount_amount = self.total * (self.discount.to_f / 100)
    self.total -= discount_amount
    "After the discount, the total comes to $#{self.total.to_i}."
  else
    "There is no discount to apply."
  end
end


def items
  @items
end

def void_last_transaction
  self.total -= @prices.last
end
end
#   #apply_discount
#     the cash register was initialized with an employee discount
#       applies the discount to the total price (FAILED - 7)
#       returns success message with updated total (FAILED - 8)
#       reduces the total (FAILED - 9)
#     the cash register was not initialized with an employee discount
#       returns a string error message that there is no discount to apply (FAILED - 10)
#   #items
#     returns an array containing all items that have been added (FAILED - 11)
#   #void_last_transaction
#     subtracts the last transaction from the total (FAILED - 12)
