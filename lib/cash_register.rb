class CashRegister
  attr_accessor :total, :discount, :last_transaction

   #@@all_transactions = {} #{transaction: [stuff]}

  def initialize(eDiscount = 0)
    @total = 0
    @discount = eDiscount
    @all_items = []
    @last_transaction = 0
  end
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times {@all_items << title}
    self.last_transaction = self.total
  end
  def apply_discount
    if(!self.discount || self.discount == 0)
      "There is no discount to apply."
    else
      self.last_transaction = (self.total -= (self.total * self.discount/100))
      "After the discount, the total comes to $#{self.total}."
    end
  end
  def items
    @all_items
  end
  def void_last_transaction
    #WORK HERE!!!!
    self.total -= self.last_transaction
  end

end
