
#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ОбработкаПроведения(Отказ,Режим)
	
	Движения.ВКМ_ПланированиеОтпуска.Записывать = Истина;
	
	Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	|	ВКМ_ГрафикОтпусковОтпускаСотрудников.Сотрудник КАК Сотрудник,
	|	ВКМ_ГрафикОтпусковОтпускаСотрудников.ДатаНачала КАК ДатаНачала,
	|	ВКМ_ГрафикОтпусковОтпускаСотрудников.ДатаОкончания КАК ДатаОкончания,
	|	РАЗНОСТЬДАТ(ВКМ_ГрафикОтпусковОтпускаСотрудников.ДатаНачала, ВКМ_ГрафикОтпусковОтпускаСотрудников.ДатаОкончания,
	|		День) КАК Количество
	|ИЗ
	|	Документ.ВКМ_ГрафикОтпусков.ОтпускаСотрудников КАК ВКМ_ГрафикОтпусковОтпускаСотрудников
	|ГДЕ
	|	ВКМ_ГрафикОтпусковОтпускаСотрудников.Ссылка = &Ссылка";
	
	Запрос.УстановитьПараметр("Ссылка", Ссылка);
	Выборка = Запрос.Выполнить().Выбрать();
	
	Пока Выборка.Следующий() Цикл
		Движение = Движения.ВКМ_ПланированиеОтпуска.Добавить();
		Движение.Период = Дата;
		Движение.Сотрудник = Выборка.Сотрудник;
		Движение.КоличествоДней = Выборка.Количество + 1;
		Движение.ДатаНачала = Выборка.ДатаНачала;
		Движение.ДатаОкончания = Выборка.ДатаОкончания;
	КонецЦикла;

КонецПроцедуры

#КонецОбласти

#КонецЕсли