# require "pry"
class CashRegister

attr_reader :price, :discount, :title
attr_accessor :total, :add_item, :lastamount

# # this is the reader
# def total
#   @total
# end
#
# # this is the setter, if this isn't called then can't change the total
# def total=(num)
#   @total = num
# end

# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction

  def initialize(discount = 0)
    # sets an instance variable @total on initialization to zero
    @total = 0
    @discount = discount
    @items = []
    # optionally takes an employee discount on initialization
  end

  def add_item(title, price, quantity = 1)
    # title and price increase total
    # accepts an optional quantity
    self.total += (price * quantity)
    quantity.times { @items << title }
    # binding.pry
    self.lastamount = price * quantity
  end

  def items
    self.items
    # binding.pry
  end

  def void_last_transaction
    self.total = self.total - self.lastamount
  end

end

# cash_register = CashRegister.new
# # discount is a percentage so 20 is  20%
# cash_register_with_discount = CashRegister.new(20)
#
# add_book = cash_register.add_item("book", 5.00, 3)
# add_cereal = cash_register.add_item("Lucky Charms", 4.5)
#
#
#
# pry.start
#
# false
