class Finish
attr_accessor :image, :guide, :text, :scene
	def initialize(image, guide, text)
		@image = image
		@guide = guide
		@text  = text
		@scene = false
	end
end