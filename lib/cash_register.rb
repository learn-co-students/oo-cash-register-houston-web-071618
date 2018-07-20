require "pry"

class CashRegister

  attr_reader :discount
  attr_accessor :total, :items, :price_history

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @price_history = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    self.total += price * quantity
    @quantity.times do
      @items << @title
      @price_history << @price
    end
  end

  def apply_discount
    if self.total != 0
      total_float = self.total.to_f
      discount_float = self.discount.to_f
      self.total = (total_float * (1 - discount_float / 100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.price_history.last
    self.price_history = self.price_history[0..-1]
  end
end
