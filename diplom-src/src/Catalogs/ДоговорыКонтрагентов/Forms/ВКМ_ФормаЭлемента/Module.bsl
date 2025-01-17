
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если Элементы.Найти("ГруппаПериод") = Неопределено Тогда
		ЭлементГруппаПериод = Элементы.Добавить("ГруппаПериод", Тип("ГруппаФормы"));
		ЭлементГруппаПериод.Вид = ВидГруппыФормы.ОбычнаяГруппа;
		ЭлементГруппаПериод.Заголовок = "Период действия договора";
		ЭлементГруппаПериод.Видимость = Ложь;
	КонецЕсли;
	
	Если Элементы.Найти("ВКМ_ДатаНачала") = Неопределено Тогда			
		ЭлементДатаНачала = Элементы.Добавить("ВКМ_ДатаНачала", Тип("ПолеФормы"), Элементы.ГруппаПериод);
		ЭлементДатаНачала.Вид = ВидПоляФормы.ПолеВвода;
		ЭлементДатаНачала.ПутьКДанным = "Объект.ВКМ_ДатаНачала";
		ЭлементДатаНачала.Заголовок = "С";
		ЭлементДатаНачала.Видимость = Ложь;
	КонецЕсли;
	
	Если Элементы.Найти("ВКМ_ДатаОкончания") = Неопределено Тогда
		ЭлементДатаОкончания = Элементы.Добавить("ВКМ_ДатаОкончания", Тип("ПолеФормы"), Элементы.ГруппаПериод);
		ЭлементДатаОкончания.Вид = ВидПоляФормы.ПолеВвода;
		ЭлементДатаОкончания.ПутьКДанным = "Объект.ВКМ_ДатаОкончания";
		ЭлементДатаОкончания.Заголовок = "по";
		ЭлементДатаОкончания.Видимость = Ложь;
	КонецЕсли;

	Если Элементы.Найти("ВКМ_СуммаАбонентскойПлаты") = Неопределено Тогда
		ЭлементСуммаАбонентскойПлаты = Элементы.Добавить("ВКМ_СуммаАбонентскойПлаты", Тип("ПолеФормы"));
		ЭлементСуммаАбонентскойПлаты.Вид = ВидПоляФормы.ПолеВвода;
		ЭлементСуммаАбонентскойПлаты.ПутьКДанным = "Объект.ВКМ_СуммаАбонентскойПлаты";
		ЭлементСуммаАбонентскойПлаты.Заголовок = "Сумма абонентской платы";
		ЭлементСуммаАбонентскойПлаты.Видимость = Ложь;
	КонецЕсли;
	
	Если Элементы.Найти("ВКМ_СтоимостьЧасаРаботы") = Неопределено Тогда	
		ЭлементСтоимостьЧасаРаботы = Элементы.Добавить("ВКМ_СтоимостьЧасаРаботы", Тип("ПолеФормы"));
		ЭлементСтоимостьЧасаРаботы.Вид = ВидПоляФормы.ПолеВвода;
		ЭлементСтоимостьЧасаРаботы.ПутьКДанным = "Объект.ВКМ_СтоимостьЧасаРаботы";
		ЭлементСтоимостьЧасаРаботы.Заголовок = "Стоимость часа работы";
		ЭлементСуммаАбонентскойПлаты.Видимость = Ложь;
	КонецЕсли;
	
	ВидДоговораПриИзмененииНаСервере();
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ВидДоговораПриИзменении(Элемент)
	ВидДоговораПриИзмененииНаСервере();
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура ВидДоговораПриИзмененииНаСервере()
	
	Если Объект.ВидДоговора = Перечисления.ВидыДоговоровКонтрагентов.ВКМ_АбонентскоеОбслуживание Тогда
		Элементы.ГруппаПериод.Видимость = Истина;
		Элементы.ВКМ_ДатаНачала.Видимость = Истина;
		Элементы.ВКМ_ДатаОкончания.Видимость = Истина;
		Элементы.ВКМ_СуммаАбонентскойПлаты.Видимость = Истина;	
		Элементы.ВКМ_СтоимостьЧасаРаботы.Видимость = Истина;
	КонецЕсли;
	
	Если Объект.ВидДоговора = Перечисления.ВидыДоговоровКонтрагентов.Покупатель Или Объект.ВидДоговора = Перечисления.ВидыДоговоровКонтрагентов.Поставщик Тогда
		Элементы.ГруппаПериод.Видимость = Ложь;
		Элементы.ВКМ_ДатаНачала.Видимость = Ложь;
		Элементы.ВКМ_ДатаОкончания.Видимость = Ложь;
		Элементы.ВКМ_СуммаАбонентскойПлаты.Видимость = Ложь;	
		Элементы.ВКМ_СтоимостьЧасаРаботы.Видимость = Ложь;
	КонецЕсли;
		
КонецПроцедуры

#КонецОбласти

