# encoding: utf-8
class Step

	def self.location(way)
		location = case way
			# Утро 
					when ["1"]
						Location.new("home.png",
							 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Время просыпаться!", "- Время принимать решения...", "- На что падет твой выбор сегодня?", "- И да... ужасно выглядишь!", "=)"]}, 
								 {id: "1", guide: "guide_nastya_2.png", closing_event: "game_url", text: ["- Тяжелая ночь, да?", "- Ну, что ж... Я здесь не для того, чтобы осуждать тебя...", "- Спи дальше! Пока жизнь проходит мимо. Дни, недели, месяцы, годы!", "- Все это не важно, когда ХОЧЕТСЯ ПОСПАТЬ!-Правда?" ]},
								 {id: "2", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Work Hard! Этот выбор стоит аплодисментов.", "*хлоп*...*хлоп*", "- И вот ты медленно сползаешь с кровати, почти неосознанно идешь умываться.", "- Бодрящий душ... не помогает.", "- По прежнему на автопилоте ты идешь одеваться.", "- Вызываешь такси, завариваешь кофе... И, кажется, вот он - момент прозрения...", "- Но... На самом деле, ты все еще в кровати, а все выше описанное - плод твоего воспаленного, но ответственного воображения.", "- Может хватит? Пора вставать.", "=)"]},
							  	 {id: "3", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты серьезно?", "- ...", "- ...", "- ...", "- Я...", "Я даже не знаю, что на это сказать...", "- ...", "- А меня возьмешь?","=)"]}
								],
							  	[{title: "Спать дальше", id: "1"}, {title: "На работу", id: "2"}, {title: "В Harat's", id: "3"}]
							)
  					when ["1", "2"]
  						Location.new("offffffice.png",
							 	[{id: "0", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Хорошо, когда у человека есть любимая работа.", "- Замечательные коллеги, интересные задачи, перспективы...", "- Ага... Мечтаем дальше.", "- А тут реальность. Кофе и сигареты, занимательная орнитология и \"проще дать, чем объяснить, почему нет\", милый рот разработчицы и подлинный арт-хаус в диалогах.", "- Джим Джармуш завидует, Кустурица впадает в запой, Кубрик схлопывается в самого себя.", "- А что дальше?"]},
							 	 {},
							 	 {id: "2", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Рутина. Вот истинное лицо твоей жизни.", "- Работа, работа, работа. Больше ничего.", "- Однажды ты осознаешь, что погряз в непрерывной цикличности, в процессе, который невозможно остановить.", "- А ради чего?", "- Сколько?! Сколько раз ты задавался этим вопросом?", "- Ни разу? Один? Десять? Милион?", "- Какая разница, если ты все еще здесь, сидишь и давишь на кнопки...", "- Кхм... может кофе?"]},
							 	 {id: "3", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Ае! Будь плохим парнем! Порядок для девочек.","- Ты почувствовал как ирландские корни манят тебя, как в голове звучат народные мотивы северной части Туманного Альбиона, как ноги начинают непроизвольно биться в коныульсиях... кхм... Танцевать.","- Ты встаешь из за стола и танцуешь прямо к двери. Танцуешь, как Бог.","- Ирландский Бог.","- Танцуешь так будто верхняя половина твоего тела парализована, а в нижнюю вселился дьявол!","- Коллеги смотрят с интересом, но быстро остывают... Привыкли.","- И вот, ты танцуешь по улице к пабу. И каждый, кто видит тебя...","- Нет, не начинает танцевать вместе с тобой...","- Этим людишкам вообще не понять мотивов Ирландского Бога!"]}
							 	 ],
							 	[{title: "Остаться на работе", id: "2"}, {title: "Уехать в Harat's", id: "3"}]
							)
  					when ["1", "2", "2"] 
  						Location.new("offffffice.png",
							 	[{id: "0", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Ты все еще здесь?","- Можешь не отвечать. Я знаю. Ты всегда здесь.","- Ты уже не способен разорвать этот порочный круг. Нажать на нужную кнопку.","- У просто НЕТ нужной кнопки. У тебя НЕТ выбора.","- Работа - Дом - Работа - Дом - Работа - Дом... Твой бесконечный маршрут.","- Это не закончится. Никогда.","- Мне жаль. =("]},
							 	 {id: "1", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Круг замкнулся.","- Ты едешь домой, мимо проносятся унылые городские пейзажи, в твоем сознании пустота.","- Нет ничего, что могло бы пробудить тебя. Нет ничего, что могло бы спасти.","- Все повторяется...","- Все повторяется...","- Все повторяется...","- Все повторяется...","- Все повторяется...","- Все повторяется..."]}],
							 	[{title: "Поехать Домой", id: "1"}]
							)
  					when ["1", "2", "2", "1"]
  						  	Location.new("error.png",
									[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- Все сломалось =(","- Это ты все сломал!","- Мы писали высоко производительный, безупречно отлаженый код.","- Зачем ты все сломал?!","- Окай. РЕСТАРТ!"]}],
									[])
  					when ["1", "2", "3"] 
							Location.new("harats.png",
							 	[{id: "0", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- Ай-на-нэ, мой хароший!","- Сколько лет! Сколько зим! Сколько конэй угнали с нашей последней встрэчи!","- Праходи, садись!","- Как твои дэла? Пачэму такой тлэнный? Пьем за мой счет!","- Это айфон? Давай сюда. У мэня надежнее лежать будет!","- Оп!"]},
							 	 {id: "1", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- Уже уходишь? Ай, расстроил мэня!","- Дай давэзу тебя! Взбирайся!","- Да что ты дэлаешь?!","- На лошади не ездил штоле?","- Ну, кто так садится?","- Дай научу!","- Ну-ка, разогнись! Вот эту ногу, вот так.... Повыше! Воооот.","- Тэперь руку вот сюда. Обхватывай! Правэльно!","- Поскакали! Харашо!"]}
								],
							 	[{title: "Поехать Домой", id: "1"}]
							)
					when ["1", "2", "3", "1"] 
							Location.new("home.png",
							 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Вот и ты! Как прошел день?","- Ты вернул себе ВЛАСТЬ?!","- Нет? =( Ну вот...","- Ладно, не стану докучать! Делай выбор!","- ПО-ГО-ДИ! Это что КОНЬ за окном?"]},
							 	 {id: "1", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- Эм... Похоже мы не предусмотрели такую концовку.","- Почему ты не выбрал \"Гулять на районе\"???","- Это же гораздо интереснее, чем СПАТЬ!","- Вот и не получишь ачивку! Сам виноват =Р","- Спать так спать!","- Ребята расходимся, он будет спать."]},
							 	 {},
							 	 {},
							 	 {id: "4", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты в этом уверен?","- Не то, что бы я волнуюсь... Просто...","- Мне казалось, с чувством самосохранения у тебя порядок.","- Все ошибаются...","- Хорошей прогулки.","- Чего ты так смотришь?","- Думаешь я с тобой пойду?!","- Не-не-не-не-не-не. Мне спокойнее тут. Здесь я опасаюсь только XSS и SQL-инъекций, а там... Ну ты понял.","- Удачи, храбрец!  *шепотом* смертник."]},
							 	 {id: "5", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Так! А ну-ка быстро представил, что играет эпичная музыка!","- Лучше включи что-нибудь в vk, я подожду.","- Включил? Ок.","- А теперь читай вслух. Громко. Расставляя акценты.","- \"Днем он обычный человек. Он работает, ходит в бар, ведет тривиальный образ жизни. Со стороны может показаться, что этот ничем не примечательный обыватель скучен и пуст. Но у него есть тайна.\"","- \"Под покровом ночи, он стоит на крыше высокого здания, оглядывая окрестности его города. Этот город - его единственная страсть, любовь всей его жизни. Его он готов защищать до последней капли крови!\"","- \"Его плащ развевается на ночном ветру, он знает, что его город нуждается в нем и он спешит на помощь.\"","- \"Он - рыцарь в розовом плаще! Он - МУНАШ МЭН.\""]}
								],
							 	[{title: "Гулять на районе", id: "4"}, {title: "Спать", id: "1"}, {title: "Секретная концовка!", id: "5"}]
							)
					when ["1", "2", "3", "1", "4"] 
							Location.new("rayon.png",
							 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["-"]}],
							 	[]
							)
					when ["1", "2", "3", "1", "5"] 
							Location.new("secret_final.png",
							 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["Молодец. Открыл секретную концовку. Теперь сначала."]}],
							 	[]
							)
  					when ["1", "3"]
  						Location.new("harats.png",
							 [{id: "0", guide: "guide_nick_1.png", closing_event: "game_url", text: []}
							 ],
							 [{title: "Поехать Домой", id: "1"}])
					else

				    end
	end
end