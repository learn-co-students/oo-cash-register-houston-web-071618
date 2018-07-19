class CashRegister
	attr_accessor :discount, :total, :lastamount, :items

	def initialize(discount = 0)
		self.total = 0
		self.discount = discount
		self.items = []
	end

	def add_item(title, price, quantity = 1)
		self.total += price * quantity
		self.lastamount = price
		quantity.times { @items << title }
	end

	def apply_discount()
		self.total = self.total - self.total * self.discount/100
		if discount == 0
			"There is no discount to apply."
		else
		"After the discount, the total comes to $#{self.total}."
		end
	end

	def void_last_transaction 
		self.total -= self.lastamount
	end


end
