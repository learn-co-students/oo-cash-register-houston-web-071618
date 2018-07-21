require 'pry'

class CashRegister

	attr_accessor :total, :price, :discount, :last_transaction

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@receipt = []
	end

	def add_item(title, price, quantity = 1)
		self.total += price*quantity
		quantity.times do
			@receipt << title
		end
		@last_transaction = price*quantity
	end

	def apply_discount
		if self.discount == 0
			"There is no discount to apply."
		else
			self.total = (self.total*((100-self.discount.to_f)/100)).to_i
			"After the discount, the total comes to $#{self.total}."
		end
	end

	def items
		@receipt
	end


	def void_last_transaction
		self.total -= @last_transaction
	end

binding.pry

end

# myRegister = CashRegister.new(600, 0)