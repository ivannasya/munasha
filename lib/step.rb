# encoding: utf-8

class Step

	def self.location(new_step)
		house  = Location.new("home.png", "guide_nick_1.png", "Нет пока текста", 0)
		work   = Work.new("work.jpg", "guide_nick_2.png", "Нет пока текста", 0)
		harats = Location.new("harats.jpg", "guide_slava_1.png", "Нет пока текста", 0)

		location = case new_step
					when "1" then house
  					when "2" then work
  					when "3" then harats
				    end
	end

	def self.finish(way)
		roof   	 = Finish.new("image.jpg", "guide_slava_2.png", "Нет пока текста")
		district = Finish.new("image.jpg", "guide_nastya_1.png", "Нет пока текста")

		finish = case way
				 when "1231" then roof
  				 else district
				 end
	end
end