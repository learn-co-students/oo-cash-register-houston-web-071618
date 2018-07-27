require "pry"

class CashRegister

	attr_accessor :total, :quantity, :discount, :items, :last_transaction


	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		@quantity = quantity
		quantity.times do 
			@items << title
		end
		self.last_transaction = price * quantity
		self.total += self.last_transaction
	end

	def apply_discount
		if discount == 0
			"There is no discount to apply."
		else
		self.total = (total - total * discount / 100.00).to_i
		"After the discount, the total comes to $#{self.total}."
		end
	end

	def items
		@items 
	end

	def void_last_transaction
		self.total = self.total - self.last_transaction
	end


end
