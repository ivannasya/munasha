class Location
attr_accessor :image, :guide, :text, :amount
	def initialize(image, guide, text, amount)
		@image = image
		@guide = guide
		@text = text
		@amount = amount
	end
end