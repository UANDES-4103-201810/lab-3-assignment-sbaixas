class User < ApplicationRecord
	def most_expensive_ticket_bought()
		return User.find(self.id).joins(:transaction).joins(:ticket).order(:price).first()[:price]
	end
end
