require 'pry'


class CashRegister

attr_reader :total, :discount
attr_accessor :total


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @shopping_cart = []
    @prices = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.total += price
      @shopping_cart << title
      @prices << price
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
    @shopping_cart
  end

  def void_last_transaction
    self.total -= @prices.last
  end
end
