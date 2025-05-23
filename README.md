# ИНСТРУКЦИЯ ПО НАЧАЛЬНОЙ НАСТРОЙКЕ

*Все нижеперечисленные справочники, регистры и документы доступны в подсистеме «ВКМ_ДобавленныеОбъекты».


## Шаг 1

Первоначально создайте группу и бота в Telegram. Они нужны для отправки уведомлений
специалистам о созданных документах «Обслуживание клиента». Уведомления создаются при
создании нового документа, а также при изменении даты и ФИО специалиста.

## Шаг 2

В подситсеме «Обслуживание клиентов» заполните следующие константы: 
«Абонентская плата» - заполняется из справочника «Номенклатура» соответствующим по смыслу
наименованием, при необходимости создайте нужную номенклатуру;
«Работы специалиста» - заполняется из справочника «Номенклатура» соответствующим по смыслу
наименованием, при необходимости создайте нужную номенклатуру;
«ВКМ токен ТГБот» - заполняется токеном бота Telegram; 
«Идентификатор группы ТГ» - заполняется идентификатором группы Telegram.

## Шаг 3 

Заполните справочники «Физические лица», «Контрагенты», «Договоры контрагентов»
и другие.

## Шаг 4

В справочнике «Пользователи» создайте для каждого пользователя программой –
пользователя и укажите какое физическое лицо к нему относится.
На вкладке права доступа назначьте каждому пользователю соответствующий должности 
профиль группы доступа. Наименования профиля группы доступа созданы для вашего 
удобства интуитивно понятными. Пример: для бухгалтеров профиль группы доступа – 
«Бухгалтер ИТ Фирмы», для кадровика – «Кадровик расчетчик».

## Шаг 5

В подситсеме «Расчеты» заполните регистр сведений «Условия оплаты сотрудников», 
укажите процент от продаж у специалистов и оклады у всех сотрудников.
Заполните константу «Фиксированная премия».

## Шаг 6

В справочник «Графики работы» заведите необходимый вид графика работы, например пятидневка. 
Затем в группе «Сервис» воспользуйтесь обработкой «Заполнение графика». 
Далее в регистре «График работы» проверьте корректность заполнения графика.
