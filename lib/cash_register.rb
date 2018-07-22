class CashRegister

  attr_accessor :total, :title, :items
  attr_reader :discount, :price

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    count = @quantity
    # Place items purchased in array
    while count > 0
      @items << title
      count -= 1
    end
    @total += price*quantity

  end #add_item


  def apply_discount
    @total = @total - @total * @discount/100
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total}."
    end
  end #apply_discount


  def void_last_transaction
     @total = @total - @price
  end #void_last_transaction


end #class CashRegister
