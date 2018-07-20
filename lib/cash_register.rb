require 'pry'
class CashRegister

  def initialize(discount = 1)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount
  end

  attr_accessor :total, :discount, :last_transaction_amount, :last_transaction_quantity


  def add_item(title, price, quantity = 1)
    total_price = price * quantity
    @last_transaction_quantity = quantity
    @last_transaction_amount = total_price
    self.total += total_price
    while quantity > 0
      self.items << title
      quantity -= 1
    end

  end

  def apply_discount
    if @discount <= 1
      "There is no discount to apply."
    else
      @total -= (@total * @discount /100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= last_transaction_amount
    while last_transaction_quantity > 0
      self.items.pop()
      @last_transaction_quantity -= 1
    end
  end

end
