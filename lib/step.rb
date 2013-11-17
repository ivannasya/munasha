# encoding: utf-8
class Step

	def self.location(new_step)
		house  = Location.new("home.png", "guide_nastya_1.png", "- Время просыпаться! - Время принимать решения...
- На что падет твой выбор сегодня?
- И да... ужасно выглядишь! =)
", 0)
		work   = Work.new("offffffice.png", "guide_nick_2.png", "- Work Hard! Этот выбор стоит аплодисментов. *хлоп*...*хлоп*
- И вот ты медленно сползаешь с кровати, почти неосознанно идешь умываться.
- Бодрящий душ... не помогает.
- По прежнему на автопилоте ты идешь одеваться.
- Вызываешь такси, завариваешь кофе... И, кажется, вот он - момент прозрения...
- Но... На самом деле, ты все еще в кровати, а все выше описанное - плод твоего воспаленного, но ответственного воображения.
- Может хватит? Пора вставать. =)	", 0)
		harats = Location.new("harats.jpg", "guide_slava_1.png", "- Ты серьезно?
- ...
- ...
- ...
- Я... Я даже не знаю, что на это сказать...
- ...
- А меня возьмешь? =)", 0)

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