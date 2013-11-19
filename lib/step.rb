# encoding: utf-8
class Step

	def self.location(way)
		case way
		# id-location: 0-current; 1-home; 2-work; 3-harat's
		# Morning 
		when ["1"]
			Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Время просыпаться!", "- Время принимать решения...", "- На что падет твой выбор сегодня?", "- И да... ужасно выглядишь!", "=)"]}, 
					 {id: "1", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Тяжелая ночь, да?", "- Ну, что ж... Я здесь не для того, чтобы осуждать тебя...", "- Спи дальше! Пока жизнь проходит мимо. Дни, недели, месяцы, годы!", "- Все это не важно, когда ХОЧЕТСЯ ПОСПАТЬ!", "-Правда?" ]},
					 {id: "2", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Work Hard! Этот выбор стоит аплодисментов.", "*хлоп*...*хлоп*", "- И вот ты медленно сползаешь с кровати, почти неосознанно идешь умываться.", "- Бодрящий душ... не помогает.", "- По прежнему на автопилоте ты идешь одеваться.", "- Вызываешь такси, завариваешь кофе... И, кажется, вот он - момент прозрения...", "- Но... На самом деле, ты все еще в кровати, а все выше описанное - плод твоего воспаленного, но ответственного воображения.", "- Может хватит? Пора вставать.", "=)"]},
				  	 {id: "3", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты серьезно?", "- ...", "- ...", "- ...", "- Я...", "- Я даже не знаю, что на это сказать...", "- ...", "- А меня возьмешь?","=)"]}
					],
				  	[{title: "Спать дальше", id: "1"}, {title: "На работу", id: "2"}, {title: "В Harat's", id: "3"}]
				)
		# house
		when ["1", "1"]
			Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ну, ок. Бог тебе уже не подаст, но есть еще шанс провести этот день чуть менее бездарно.","- Даваааааай. Соберись и жмакни уже по кнопке!"]}, 
					 {id: "1", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Да ты издеваешься.","- Хочешь загадку?","- Тленное существо, которое проспит 90% своей жизни, 5 букв.","- Догадался?","- М","- У", "- Н","- А","- Ш","- МУНАШ =)" ]},
					 {id: "2", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты встал на путь истинный, сын мой.","- Осталось встать с кровати и совершить несколько телодвижений в сторону офиса.","- Я верю, ты справишься.","- Да прибудет с тобой…","- Если договорю, дисней меня засудит =("]},
				  	 {id: "3", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ну-у-у-у, почему бы и нет. Этот день все равно не станет лучше.","- Ого! Вот это скорость. Пожарники медленнее одеваются.","- *Когда ты так в последний раз на работу собирался? -_-*"]}
					],
				  	[{title: "Спать дальше", id: "1"}, {title: "На работу", id: "2"}, {title: "В Harat's", id: "3"}]
				)
		# house-work
		when ["1", "1", "2"]
			Location.new("offffffice.png",
				 	[{id: "0", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- А что ты собственно тут делаешь, друг?","- Я домой. Удачки ^^"]}, 
					 {id: "1", guide: "empty_guide.png", closing_event: "new_game_url", text: ["- Оставим формальности, ок?","- СНАЧАЛА!", "- Для продолжения нажми пробел."]}
					],
				  	[{title: "Поехать домой", id: "1"}]
				)
		# house-harat's
		when ["1", "1", "3"]
			Location.new("harats.png",
				 	[{id: "0", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- Я хочу сказать тебе одно.","- Нет, серьезно, просто откинься в кресле и впитай немного цыганской философии.","- Если бы мир был цирковой ареной, а мы - люди - дрессированными медведями, ты был бы белым.","- Да-да, белым медведем посреди бурых, черных и еще абы каких.","- О тебе бы говорили: “Да он же белая ворона!”. Хотя ты медведь. Задумайся над этим.","- Я готов поставить всех своих коней на то, что в этом нет ничего плохого!","- В тебе есть сила, ты как ретивый конь… только медведь… ворона.","- Неважно. Просто помни, что цыгане не слишком хороши в вопросах философии."]}, 
					 {id: "1", guide: "guide_slava_2.png", closing_event: "new_game_url", text: ["- Уже уезжаешь?","- Я вызову тебе такси.","- И да, теперь я говорю без акцента.","- Стараюсь не выделяться.","- Доброго пути, кибитка у входа."]}
					],
				  	[{title: "Поехать домой", id: "1"}]
				)			
		# house-house
		when ["1", "1", "1"]
			Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты слышал про нарколепсию, м?","- Мне кажется, тебе стоит пройти обследование.","- Это НЕ нормально. Люди столько НЕ спят."]}, 
					 {id: "1", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Вот опять… Я распинаюсь, а от тебя только сопение из под одеялки.","- Мне скучно. Надо чем-то себя занять…","- Придумала! Это будет уникальная концовка!","- Название, название… Sweet Dreams, ок." ]}
					],
				  	[{title: "Спать дальше", id: "1"}]
				)
		# house-house-house: Sweet Dreams
		when ["1", "1", "1", "1"]
			Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- SWEET DREAMS!","- Для продолжения нажми пробел."]}],
				  	[]
				)
		#  work
  		when ["1", "2"]
  			Location.new("offffffice.png",
				 	[{id: "0", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Хорошо, когда у человека есть любимая работа.", "- Замечательные коллеги, интересные задачи, перспективы...", "- Ага... Мечтаем дальше.", "- А тут реальность. Кофе и сигареты, занимательная орнитология и \"проще дать, чем объяснить, почему нет\", милый рот разработчицы и подлинный арт-хаус в диалогах.", "- Джим Джармуш завидует, Кустурица впадает в запой, Кубрик схлопывается в самого себя.", "- А что дальше?"]},
				 	 {},
				 	 {id: "2", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Рутина. Вот истинное лицо твоей жизни.", "- Работа, работа, работа. Больше ничего.", "- Однажды ты осознаешь, что погряз в непрерывной цикличности, в процессе, который невозможно остановить.", "- А ради чего?", "- Сколько?! Сколько раз ты задавался этим вопросом?", "- Ни разу? Один? Десять? Миллион?", "- Какая разница, если ты все еще здесь, сидишь и давишь на кнопки...", "- Кхм... может кофе?"]},
				 	 {id: "3", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Ае! Будь плохим парнем! Порядок для девочек.","- Ты почувствовал как ирландские корни манят тебя, как в голове звучат народные мотивы северной части Туманного Альбиона, как ноги начинают непроизвольно биться в конвульсиях... кхм... Танцевать.","- Ты встаешь из за стола и танцуешь прямо к двери. Танцуешь, как Бог.","- Ирландский Бог.","- Танцуешь так будто верхняя половина твоего тела парализована, а в нижнюю вселился дьявол!","- Коллеги смотрят с интересом, но быстро остывают... Привыкли.","- И вот, ты танцуешь по улице к пабу. И каждый, кто видит тебя...","- Нет, не начинает танцевать вместе с тобой...","- Этим людишкам вообще не понять мотивов Ирландского Бога!"]}
				 	 ],
				 	[{title: "Остаться на работе", id: "2"}, {title: "Уехать в Harat's", id: "3"}]
				)
		# work-work
  		when ["1", "2", "2"] 
  			Location.new("offffffice.png",
				 	[{id: "0", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Ты все еще здесь?","- Можешь не отвечать. Я знаю. Ты всегда здесь.","- Ты уже не способен разорвать этот порочный круг. Нажать на нужную кнопку.","- У тебя просто НЕТ нужной кнопки. У тебя НЕТ выбора.","- Работа - Дом - Работа - Дом - Работа - Дом... Твой бесконечный маршрут.","- Это не закончится. Никогда.","- Мне жаль. =("]},
				 	 {id: "1", guide: "guide_nick_1.png", closing_event: "game_url", text: ["- Круг замкнулся.","- Ты едешь домой, мимо проносятся унылые городские пейзажи, в твоем сознании пустота.","- Нет ничего, что могло бы пробудить тебя. Нет ничего, что могло бы спасти.","- Все повторяется...","- Все повторяется...","- Все повторяется...","- Все повторяется...","- Все повторяется...","- Все повторяется..."]}],
				 	[{title: "Поехать Домой", id: "1"}]
				)
  		# work-work-house: Error
  		when ["1", "2", "2", "1"]
  			  	Location.new("error.png",
						[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- Все сломалось =(","- Это ты все сломал!","- Мы писали высоко производительный, безупречно отлаженый код.","- Зачем ты все сломал?!","- Окай. РЕСТАРТ!", "- Для продолжения нажми пробел."]}],
						[])
  		#  work-harat's	
  		when ["1", "2", "3"] 
				Location.new("harats.png",
				 	[{id: "0", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- Ай-на-нэ, мой хароший!","- Сколько лет! Сколько зим! Сколько конэй угнали с нашей последней встрэчи!","- Праходи, садись!","- Как твои дэла? Пачэму такой тлэнный? Пьем за мой счет!","- Это айфон? Давай сюда. У мэня надежнее лежать будет!","- Оп!"]},
				 	 {id: "1", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- Уже уходишь? Ай, расстроил мэня!","- Дай давэзу тебя! Взбирайся!","- Да что ты дэлаешь?!","- На лошади не ездил штоле?","- Ну, кто так садится?","- Дай научу!","- Ну-ка, разогнись! Вот эту ногу, вот так.... Повыше! Воооот.","- Тэперь руку вот сюда. Обхватывай! Правэльно!","- Поскакали! Харашо!"]}
					],
				 	[{title: "Поехать Домой", id: "1"}]
				)
		# work-harat's-house: Sleep
		when ["1", "2", "3", "1"] 
				Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Вот и ты! Как прошел день?","- Ты вернул себе ВЛАСТЬ?!","- Нет? =( Ну вот...","- Ладно, не стану докучать! Делай выбор!","- ПО-ГО-ДИ! Это что КОНЬ за окном?"]},
				 	 {id: "1", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- Эм... Похоже мы не предусмотрели такую концовку.","- Почему ты не выбрал \"Гулять на районе\"???","- Это же гораздо интереснее, чем СПАТЬ!","- Вот и не получишь ачивку! Сам виноват =Р","- Спать так спать!","- Ребята расходимся, он будет спать.", "- Для продолжения нажми пробел."]},
				 	 {},
				 	 {},
				 	 {id: "4", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Ты в этом уверен?","- Не то, что бы я волнуюсь... Просто...","- Мне казалось, с чувством самосохранения у тебя порядок.","- Все ошибаются...","- Хорошей прогулки.","- Чего ты так смотришь?","- Думаешь я с тобой пойду?!","- Не-не-не-не-не-не. Мне спокойнее тут. Здесь я опасаюсь только XSS и SQL-инъекций, а там... Ну ты понял.","- Удачи, храбрец!  *шепотом* смертник."]},
				 	 {id: "5", guide: "guide_nastya_1.png", closing_event: "game_url", text: ["- Так! А ну-ка быстро представил, что играет эпичная музыка!","- Лучше включи что-нибудь в vk, я подожду.","- Включил? Ок.","- А теперь читай вслух. Громко. Расставляя акценты.","- \"Днем он обычный человек. Он работает, ходит в бар, ведет тривиальный образ жизни. Со стороны может показаться, что этот ничем не примечательный обыватель скучен и пуст. Но у него есть тайна.\"","- \"Под покровом ночи, он стоит на крыше высокого здания, оглядывая окрестности его города. Этот город - его единственная страсть, любовь всей его жизни. Его он готов защищать до последней капли крови!\"","- \"Его плащ развевается на ночном ветру, он знает, что его город нуждается в нем и он спешит на помощь.\"","- \"Он - рыцарь в розовом плаще! Он - МУНАШ МЭН.\""]}
					],
				 	[{title: "Гулять на районе", id: "4"}, {title: "Спать", id: "1"}, {title: "Секретная концовка!", id: "5"}]
				)
 		# work-harat's-house-rayon: Rayon
		when ["1", "2", "3", "1", "4"] 
				Location.new("rayon.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- Для продолжения нажми пробел."]}],
				 	[]
				)
		# work-harat's-house-secret_final: Secret Final
		when ["1", "2", "3", "1", "5"] 
				Location.new("secret_final.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- Молодец. Открыл секретную концовку. Теперь сначала.", "- Для продолжения нажми пробел."]}],
				 	[]
				)
		# harat's
  		when ["1", "3"]
  			Location.new("harats.png",
				 	[{id: "0", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- Ай-на-нэ-на-нэ! Рад тэбя видеть здэс в такое время!","- Ты когда-нибудь дрэссировал мэдведя?","- О-о-о-о-о, ты жизни нэ знаешь, если нэ дрэссировал!","- Слушай… Мэжду нами… Есть роллэкс, недорого. Возьмешь? Тэбе как другу скидка!","- Ты же останэшься здэсь подольше?"]}, 
					 {id: "1", guide: "guide_slava_2.png", closing_event: "Остаться в Harat’s", text: ["- Воу, воу, воу! Ну зачэм, зачэм ты так?","- Здэсь хорошая компания, теплая атмосфера! Куда тэбе спешить?"]},
					 {id: "2", guide: "guide_slava_2.png", closing_event: "Остаться в Harat’s", text: ["- Друуууг, мы же оба знаем, что ты нэ этого хочешь!","- Нэмного цыганской магии, вуаля!"]},
				  	 {id: "3", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- Мать моих мэдведей! Да сэгодня просто праздник какой-то!","- Идем обниму тэбя! Гуляем за мой счет.","- Кстати, тут такое дэло… Одолжи нэмного, брат!"]}
					],
				  	[{title: "Поехать домой", id: "1"}, {title: "Поехать в офис", id: "2"}, {title: "Остаться в Harat’s", id: "3"}]
				)
		# harat's-harat's
  		when ["1", "3", "1"]
				Location.new("harats.png",
				 	[{id: "0", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- *убирает зажигалку, бумажник, ключи во внутренний карман, говорит под нос*","- О-о-о, друг, да ты пэребрал, Ничего, я друга в бэде не брошу!","- *тащит обмякшее тело к выходу, напевает*","- Щас тэбя я отнесу…","- Возле паба положу…","- Может, кто и подбэрет","- Ну, а я обратно в паб."]},
				 	 {id: "1", guide: "empty_guide.png", closing_event: "game_url", text: ["- …","- …","- *сверчки*","- …"]}
					],
				 	[{title: "Поехать Домой", id: "1"}]
				)
		# harat's-harat's
  		when ["1", "3", "2"] || ["1", "3", "3"] || ["1", "3", "1"]
				Location.new("harats.png",
				 	[{id: "0", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- *убирает зажигалку, бумажник, ключи во внутренний карман, говорит под нос*","- О-о-о, друг, да ты пэребрал, Ничего, я друга в бэде не брошу!","- *тащит обмякшее тело к выходу, напевает*","- Щас тэбя я отнесу…","- Возле паба положу…","- Может, кто и подбэрет","- Ну, а я обратно в паб."]},
				 	 {id: "1", guide: "empty_guide.png", closing_event: "game_url", text: ["- …","- …","- *сверчки*","- …"]}
					],
				 	[{title: "Поехать Домой", id: "1"}]
				)
		# harat's-harat's
  		when ["1", "3", "3"]
				Location.new("harats.png",
				 	[{id: "0", guide: "guide_slava_1.png", closing_event: "game_url", text: ["- *убирает зажигалку, бумажник, ключи во внутренний карман, говорит под нос*","- О-о-о, друг, да ты пэребрал, Ничего, я друга в бэде не брошу!","- *тащит обмякшее тело к выходу, напевает*","- Щас тэбя я отнесу…","- Возле паба положу…","- Может, кто и подбэрет","- Ну, а я обратно в паб."]},
				 	 {id: "1", guide: "empty_guide.png", closing_event: "game_url", text: ["- …","- …","- *сверчки*","- …"]}
					],
				 	[{title: "Поехать Домой", id: "1"}]
				)
		# harat's-harat's-harat's: All Road Lead To Harat’s
		when ["1", "3", "1", "1"]
			Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- All Road Lead To Harat’s!","- Для продолжения нажми пробел."]}],
				  	[]
				)
		# harat's-harat's-harat's: All Road Lead To Harat’s
		when ["1", "3", "2", "1"]
			Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- All Road Lead To Harat’s!","- Для продолжения нажми пробел."]}],
				  	[]
				)
		# harat's-harat's-harat's: All Road Lead To Harat’s
		when ["1", "3", "3", "1"]
			Location.new("home.png",
				 	[{id: "0", guide: "guide_nastya_1.png", closing_event: "new_game_url", text: ["- All Road Lead To Harat’s!","- Для продолжения нажми пробел."]}],
				  	[]
				)		
		else
		end
	end
end