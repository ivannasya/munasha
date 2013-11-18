# encoding: utf-8
class Step

	def self.location(way)
		house  = Location.new("home.png", [{guide_nastya_1: "guide_nastya_1.png", closing_event: "game_url", text: ["- Время просыпаться!", "- Время принимать решения...", "- На что падет твой выбор сегодня?", "- И да... ужасно выглядишь!", "=)"]}, 
										   {guide_nastya_2: "guide_nastya_2.png", closing_event: "game_url", text: ["- Тяжелая ночь, да?", "- Ну, что ж... Я здесь не для того, чтобы осуждать тебя...", "- Спи дальше! Пока жизнь проходит мимо. Дни, недели, месяцы, годы!", "- Все это не важно, когда ХОЧЕТСЯ ПОСПАТЬ!-Правда?" ]}]
							 )
		work   = Location.new("offffffice.png", [{guide_nastya_1: "guide_nastya_1.png", closing_event: "game_url", text: ["- Work Hard! Этот выбор стоит аплодисментов.", "*хлоп*...*хлоп*", "- И вот ты медленно сползаешь с кровати, почти неосознанно идешь умываться.", "- Бодрящий душ... не помогает.", "- По прежнему на автопилоте ты идешь одеваться.", "- Вызываешь такси, завариваешь кофе... И, кажется, вот он", "- момент прозрения...", "- Но... На самом деле, ты все еще в кровати, а все выше описанное", "- плод твоего воспаленного, но ответственного воображения.", "- Может хватит? Пора вставать.", "=)"]}])
		harats = Location.new("harats.jpg", [{guide_nastya_1: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты серьезно?", "- ...", "- ...", "- ...", "- Я...", "Я даже не знаю, что на это сказать...", "- ...", "- А меня возьмешь?","=)"]}])
		
		# case way
		# when ["1", "1"]
		# end

		location = case way.last
					when "1" then house
  					when "2" then work
  					when "3" then harats
				    end
	end

	def self.finish(way)
		roof   	 = Finish.new("image.jpg", "guide_slava_2.png", "Нет пока текста")
		district = Finish.new("image.jpg", "guide_nastya_1.png", "Нет пока текста")

		finish = case way.pack("AAAA")
				 when "1231" then roof
  				 else district
				 end
	end
end