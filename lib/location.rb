class Location
attr_accessor :image, :guide, :text
	def initialize(image, guide, text)
		@image = image
		@guide = guide
		@text = text
	end
end