
class CashRegister

  attr_reader :discount, :quantity
  attr_accessor :total
  @@all_totals=[]

  def initialize(discount=0)
    @total =0
    @discount=discount
    @items=[]
  end

  def add_item(title, price, quantity=1)
    @quantity=quantity
    @@all_totals<<(price*quantity)
    @total+= (price*quantity)
    counter = quantity
    if counter>1
      while counter>0 do
        @items <<title
        counter -=1
      end
    else
      @items<<title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      new_total= @total-((@total/100)*@discount)
      @total=new_total
      "After the discount, the total comes to $#{new_total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total= @total-@@all_totals[-1]
  end


end
