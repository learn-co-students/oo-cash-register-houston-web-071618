class CashRegister
  attr_reader :discount
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times { |num| @items << title }
    @total += price * quantity
  end

  def apply_discount
    @total = @total * (100 - discount)/100.0

    if @discount > 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
    @discount = 0
    @items = []
  end

end
