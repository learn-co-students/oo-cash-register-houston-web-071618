class CashRegister
  attr_reader :discount

  attr_accessor :total

  def initialize(discount = 0.00)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times { @items << item }
    @total += (price * quantity)
  end
  
  def items
    @items    
  end

  def apply_discount
    return 'There is no discount to apply.' if @discount <= 0
    @total *= (1 - (@discount * 0.01) )
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    @total = 0
  end

end
