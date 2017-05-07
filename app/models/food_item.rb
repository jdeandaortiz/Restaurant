class FoodItem < ApplicationRecord
	validates :name, :section, :price, presence: true

	def image_url
		if remote_image_url.present?
			remote_image_url
		end
	end
end