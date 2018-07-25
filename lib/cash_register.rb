require "pry"
class CashRegister

  attr_reader :items, :price
  attr_accessor :total, :quantity, :discount, :last_item_amt

  def initialize(discount = 0)
    @total = 0
    # default value of 0 otherwise discount is assigned to variable
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    last_item_quantity = quantity.times do
      items << title
    end
    self.last_item_amt = price * quantity
    # binding.pry
  end

  # def items
  #   @items
  # end

  def apply_discount
    # replace total in line 14
    # .98 = .98 - (.98 * .2)
    if discount > 0
      self.total = total - (total * discount/100.00)
    # binding.pry

      "After the discount, the total comes to $#{self.total.round}."

    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last_item_amt
  end

end

# # creates instance of Cash Register Class
# cash_register = CashRegister.new
# #
# # creates instance of Cash Register Class with discount
# cash_register_with_discount = CashRegister.new(20)
# #
# # add items
# add_eggs = cash_register.add_item("eggs", 0.98)
# add_macbook = cash_register_with_discount.add_item("macbook air", 1000)
# #
# cash_register.apply_discount
#
# cash_register.void_last_transaction
#
# pry.start
# #
# false
