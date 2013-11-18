class Location
attr_accessor :image, :guide, :button
	def initialize(image, guide, button)
		@image  = image
		@guide  = guide
		@button = button
	end
end