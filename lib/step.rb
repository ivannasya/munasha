# encoding: utf-8
class Step

	def self.location(way)
		# Утро
		house  = Location.new("home.png",
							 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Время просыпаться!", "- Время принимать решения...", "- На что падет твой выбор сегодня?", "- И да... ужасно выглядишь!", "=)"]}, 
								 {id: "1", guide: "guide_nastya_2.png", closing_event: "game_url", text: ["- Тяжелая ночь, да?", "- Ну, что ж... Я здесь не для того, чтобы осуждать тебя...", "- Спи дальше! Пока жизнь проходит мимо. Дни, недели, месяцы, годы!", "- Все это не важно, когда ХОЧЕТСЯ ПОСПАТЬ!-Правда?" ]},
								 {id: "2", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Work Hard! Этот выбор стоит аплодисментов.", "*хлоп*...*хлоп*", "- И вот ты медленно сползаешь с кровати, почти неосознанно идешь умываться.", "- Бодрящий душ... не помогает.", "- По прежнему на автопилоте ты идешь одеваться.", "- Вызываешь такси, завариваешь кофе... И, кажется, вот он", "- момент прозрения...", "- Но... На самом деле, ты все еще в кровати, а все выше описанное", "- плод твоего воспаленного, но ответственного воображения.", "- Может хватит? Пора вставать.", "=)"]}],
							  	 {id: "3", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты серьезно?", "- ...", "- ...", "- ...", "- Я...", "Я даже не знаю, что на это сказать...", "- ...", "- А меня возьмешь?","=)"]}],
							  	[{title: "Спать дальше", id: "1"}, {title: "На работу", id: "2"}, {title: "В Harat's", id: "3"}]
							)
		work   = Location.new("offffffice.png", 
							 	[{id: "0", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Хорошо, когда у человека есть любимая работа.", "- Замечательные коллеги, интересные задачи, перспективы...", "- Ага... Мечтаем дальше.", "- А тут реальность. Кофе и сигареты, занимательная орнитология и \"проще дать, чем объяснить, почему нет\", милый рот разработчицы и подлинный арт-хаус в диалогах.", "- Джим Джармуш завидует, Кустурица впадает в запой, Кубрик схлопывается в самого себя.", "- А что дальше?"]},
							 	 {id: "2", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Рутина. Вот истинное лицо твоей жизни.", "- Работа, работа, работа. Больше ничего.", "- Однажды ты осознаешь, что погряз в непрерывной цикличности, в процессе, который невозможно остановить.", "- А ради чего?", "- Сколько?! Сколько раз ты задавался этим вопросом?", "- Ни разу? Один? Десять? Милион?", "- Какая разница, если ты все еще здесь, сидишь и давишь на кнопки...", "- Кхм... может кофе?"]},
							 	 {id: "3", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Ае! Будь плохим парнем! Порядок для девочек.","- Ты почувствовал как ирландские корни манят тебя, как в голове звучат народные мотивы северной части Туманного Альбиона, как ноги начинают непроизвольно биться в коныульсиях... кхм... Танцевать.","- Ты встаешь из за стола и танцуешь прямо к двери. Танцуешь, как Бог.","- Ирландский Бог.","- Танцуешь так будто верхняя половина твоего тела парализована, а в нижнюю вселился дьявол!","- Коллеги смотрят с интересом, но быстро остывают... Привыкли.","- И вот, ты танцуешь по улице к пабу. И каждый, кто видит тебя...","- Нет, не начинает танцевать вместе с тобой...","- Этим людишкам вообще не понять мотивов Ирландского Бога!"]}]
							 	[{title: "Остаться на работе", id: "2"}, {title: "Уехать в Harat's", id: "3"}]
							)
		harats = Location.new("harats.png", [],
							 [{title: "Остаться в Harat's", id: "3"}])
		
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