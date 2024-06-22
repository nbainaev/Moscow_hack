create table rf_subjects (
  id integer primary key,
  code integer unique not null,
  name varchar2(250) not null,
  capital varchar2(250) not null
);

insert into rf_subjects values ( 10, 10, 'Республика Карелия', 'г. Петрозаводск' );
insert into rf_subjects values ( 14, 14, 'Республика Саха (Якутия)', 'г. Якутск' );
insert into rf_subjects values ( 15, 15, 'Республика Северная Осетия - Алания', 'г. Владикавказ' );
insert into rf_subjects values ( 23, 23, 'Краснодарский край', 'г. Краснодар' );
insert into rf_subjects values ( 24, 24, 'Красноярский край', 'г. Красноярск' );
insert into rf_subjects values ( 25, 25, 'Приморский край', 'г. Владивосток' );
insert into rf_subjects values ( 29, 29, 'Архангельская область', 'г. Архангельск' );
insert into rf_subjects values ( 35, 35, 'Вологодская область', 'г. Вологда' );
insert into rf_subjects values ( 39, 39, 'Калининградская область', 'г. Калининград' );
insert into rf_subjects values ( 66, 66, 'Свердловская область', 'г. Екатеринбург' );
insert into rf_subjects values ( 76, 76, 'Ярославская область', 'г. Ярославль' );
insert into rf_subjects values ( 77, 77, 'г. Москва', 'г. Москва' );
insert into rf_subjects values ( 78, 78, 'г. Санкт-Петербург', 'г. Санкт-Петербург' );
insert into rf_subjects values ( 91, 91, 'Республика Крым', 'г. Симферополь' );
insert into rf_subjects values ( 92, 92, 'г. Севастополь', 'г. Севастополь' );




create table rf_regions (
  id integer primary key,
  subject integer references rf_subjects(id),
  name varchar2(250) not null,
  capital varchar2(250) not null
);

insert into rf_regions values ( 100, 10, 'Петрозаводский район', 'г. Петрозаводск' );
insert into rf_regions values ( 140, 14, 'Якутский район', 'г. Якутск' );
insert into rf_regions values ( 150, 15, 'Владикавказский район', 'г. Владикавказ' );
insert into rf_regions values ( 230, 23, 'Краснодарский район', 'г. Краснодар' );
insert into rf_regions values ( 240, 24, 'Красноярский район', 'г. Красноярск' );
insert into rf_regions values ( 250, 25, 'Владивостокский район', 'г. Владивосток' );
insert into rf_regions values ( 290, 29, 'Архангельский район', 'г. Архангельск' );
insert into rf_regions values ( 350, 35, 'Вологодский район', 'г. Вологда' );
insert into rf_regions values ( 390, 39, 'Калининградский район', 'г. Калининград' );
insert into rf_regions values ( 660, 66, 'Екатеринбургский район', 'г. Екатеринбург' );
insert into rf_regions values ( 760, 76, 'Ярославский район', 'г. Ярославль' );
insert into rf_regions values ( 770, 77, 'г. Москва', 'г. Москва' );
insert into rf_regions values ( 780, 78, 'г. Санкт-Петербург', 'г. Санкт-Петербург' );
insert into rf_regions values ( 910, 91, 'Симферопольский район', 'г. Симферополь' );
insert into rf_regions values ( 920, 92, 'г. Севастополь', 'г. Севастополь' );
insert into rf_regions values ( 101, 10, 'Сортавальский район', 'г. Сортавала' );
insert into rf_regions values ( 141, 14, 'Верхоянский район', 'г. Верхоянск' );
insert into rf_regions values ( 151, 15, 'Моздокский район', 'г. Моздок' );
insert into rf_regions values ( 231, 23, 'Сочинский район', 'г. Сочи' );
insert into rf_regions values ( 241, 24, 'Норильский район', 'г. Норильск' );
insert into rf_regions values ( 251, 25, 'Арсеньевский район', 'г. Арсеньев' );
insert into rf_regions values ( 291, 29, 'Северодвинский район', 'г. Северодвинск' );
insert into rf_regions values ( 351, 35, 'Череповецкий район', 'г. Череповец' );
insert into rf_regions values ( 391, 39, 'Черняховский район', 'г. Черняховск' );
insert into rf_regions values ( 661, 66, 'Нижнетагильский район', 'г. Нижний Тагил' );
insert into rf_regions values ( 761, 76, 'Рыбинский район', 'г. Рыбинск' );
insert into rf_regions values ( 771, 77, 'г. Зеленоград', 'г. Зелоноград' );
insert into rf_regions values ( 781, 78, 'г. Кронштадт', 'г. Кронштадт' );
insert into rf_regions values ( 911, 91, 'Керченский район', 'г. Керчь' );
insert into rf_regions values ( 921, 92, 'п. Балаклава', 'п. Балаклава' );






create table rf_cities (
  id integer primary key,
  region integer references rf_regions(id),
  name varchar2(250) not null
);

insert into rf_cities values ( 1000, 100, 'г. Петрозаводск' );
insert into rf_cities values ( 1400, 140, 'г. Якутск' );
insert into rf_cities values ( 1500, 150, 'г. Владикавказ' );
insert into rf_cities values ( 2300, 230, 'г. Краснодар' );
insert into rf_cities values ( 2400, 240, 'г. Красноярск' );
insert into rf_cities values ( 2500, 250, 'г. Владивосток' );
insert into rf_cities values ( 2900, 290, 'г. Архангельск' );
insert into rf_cities values ( 3500, 350, 'г. Вологда' );
insert into rf_cities values ( 3900, 390, 'г. Калининград' );
insert into rf_cities values ( 6600, 660, 'г. Екатеринбург' );
insert into rf_cities values ( 7600, 760, 'г. Ярославль' );
insert into rf_cities values ( 7700, 770, 'г. Москва' );
insert into rf_cities values ( 7800, 780, 'г. Санкт-Петербург' );
insert into rf_cities values ( 9100, 910, 'г. Симферополь' );
insert into rf_cities values ( 9200, 920, 'г. Севастополь' );
insert into rf_cities values ( 1010, 101, 'г. Сортавала' );
insert into rf_cities values ( 1410, 141, 'г. Верхоянск' );
insert into rf_cities values ( 1510, 151, 'г. Моздок' );
insert into rf_cities values ( 2310, 231, 'г. Сочи' );
insert into rf_cities values ( 2410, 241, 'г. Норильск' );
insert into rf_cities values ( 2510, 251, 'г. Арсеньев' );
insert into rf_cities values ( 2910, 291, 'г. Северодвинск' );
insert into rf_cities values ( 3510, 351, 'г. Череповец' );
insert into rf_cities values ( 3910, 391, 'г. Черняховск' );
insert into rf_cities values ( 6610, 661, 'г. Нижний Тагил' );
insert into rf_cities values ( 7610, 761, 'г. Рыбинск' );
insert into rf_cities values ( 7710, 771, 'г. Зелоноград' );
insert into rf_cities values ( 7810, 781, 'г. Кронштадт' );
insert into rf_cities values ( 9110, 911, 'г. Керчь' );
insert into rf_cities values ( 9210, 921, 'п. Балаклава' );


  

create table addresses (
  id integer primary key,
  city integer references rf_cities(id),
  street varchar2(250) not null,
  house varchar2(250) not null,
  flat integer
);

insert into addresses values ( 1, 7800, 'Невский пр.', '10', 12 );
insert into addresses values ( 2, 7800, 'ул. Космонавтов', '81 к. 1', 111  );
insert into addresses values ( 3, 7800, 'ул. Наличная', '10', 13 );
insert into addresses values ( 4, 7800, 'наб. Фонтанки', '112б', 3 );
insert into addresses values ( 5, 7800, 'Фарфоровский пост', '2', 4 );
insert into addresses values ( 6, 7800, 'ул. Садовая', '15', 6 );
insert into addresses values ( 7, 7800, 'Каменноостровский пр.', '45', 1 );
insert into addresses values ( 8, 7800, 'пер. Трёх мертвецов', '1', null );
insert into addresses values ( 9, 7800, 'Невский пр.', '81а', 3 );
insert into addresses values ( 10, 7800, 'Московский пр.', '60 к. 2', 100 );
insert into addresses values ( 11, 7800, 'ул. Ударников', '38', 7 );
insert into addresses values ( 12, 7800, 'пр. Энергетиков', '42', 64 );
insert into addresses values ( 13, 7810, 'ул. Морская', '3', 33 );
insert into addresses values ( 14, 7810, 'ул. Подводная', '4б', 8 );
insert into addresses values ( 15, 7810, 'ул. Макарова', '11', 7 );

insert into addresses values ( 16, 7800, 'Невский пр.', '11', 12 );
insert into addresses values ( 17, 7800, 'ул. Космонавтов', '81 к. 2', 110  );
insert into addresses values ( 18, 7800, 'ул. Ленина', '10', 13 );
insert into addresses values ( 19, 7800, 'наб. Фонтанки', '113б', 3 );
insert into addresses values ( 20, 7800, 'ул. Можайского', '2', 4 );
insert into addresses values ( 21, 7800, 'ул. Садовая', '35', 16 );
insert into addresses values ( 22, 7800, 'Каменноостровский пр.', '44', 2 );
insert into addresses values ( 23, 7800, 'пер. Грифцова', '3', 3 );
insert into addresses values ( 24, 7800, 'Невский пр.', '85', 22 );
insert into addresses values ( 25, 7800, 'Московский пр.', '60 к. 1', 110 );
insert into addresses values ( 26, 7800, 'ул. Дыбенко', '38', 17 );
insert into addresses values ( 27, 7800, 'пр. Энергетиков', '22', 14 );
insert into addresses values ( 28, 7810, 'ул. Морская', '4', 13 );
insert into addresses values ( 29, 7810, 'ул. Корабельная', '4', 8 );
insert into addresses values ( 30, 7810, 'Якорная пл.', '1', 7 );



create table jobs (
  id integer primary key,
  name varchar2(250) not null
);

insert into jobs values ( 1, 'Генеральный директор' );
insert into jobs values ( 2, 'Заместитель генерального директора' );
insert into jobs values ( 3, 'Директор департамента' );
insert into jobs values ( 4, 'Заместитель директора департамента' );
insert into jobs values ( 5, 'Начальник управления' );
insert into jobs values ( 6, 'Заместитель начальника управления' );
insert into jobs values ( 7, 'Начальник отдела' );
insert into jobs values ( 8, 'Заместитель начальника отдела' );
insert into jobs values ( 9, 'Консультант' );
insert into jobs values ( 10, 'Главный эксперт' );
insert into jobs values ( 11, 'Ведущий эксперт' );
insert into jobs values ( 12, 'Эксперт' );
insert into jobs values ( 13, 'Главный инженер' );
insert into jobs values ( 14, 'Ведущий инженер' );
insert into jobs values ( 15, 'Инженер' );



create table departments (
  id integer primary key,
  name varchar2(250) not null,
  boss integer references employee(id)  
);

insert into departments values ( 1, 'Департамент глубокомысленных размышлений', null );
insert into departments values ( 2, 'Департамент внезапных озарений', null );
insert into departments values ( 3, 'Департамент бескомпромиссной борьбы', null );
insert into departments values ( 4, 'Департамент тайн', null );
insert into departments values ( 5, 'Департамент обезличивания данных', null );


create table directions (
  id integer primary key,
  dept integer references departments(id),
  name varchar2(250) not null,
  boss integer references employee(id)
);

insert into directions values ( 11, 1, 'Управление критики чистого разума', null );
insert into directions values ( 12, 1, 'Управление критики практического разума', null );
insert into directions values ( 13, 1, 'Управление критики способности суждения', null );
insert into directions values ( 21, 2, 'Эфирное управление', null );
insert into directions values ( 22, 2, 'Астральное управление', null );
insert into directions values ( 23, 2, 'Ментальное управление', null );
insert into directions values ( 31, 3, 'Управление борьбы с самими собой', null );
insert into directions values ( 32, 3, 'Управление увековечения памяти павших в борьбе', null );
insert into directions values ( 41, 4, 'Управление № 1', null );
insert into directions values ( 42, 4, 'Управление № 2', null );
insert into directions values ( 43, 4, 'Управление № 3', null );
insert into directions values ( 51, 5, 'Управление маскирования', null );
insert into directions values ( 52, 5, 'Управление трансформации', null );
insert into directions values ( 53, 5, 'Управление искусственного интеллекта', null );



create table sections (
  id integer primary key,
  dir integer references directions(id),
  name varchar2(250) not null,
  boss integer references employee(id)  
);

insert into sections values ( 111, 11, 'Отдел абстрактной критики', null );
insert into sections values ( 112, 11, 'Отдел конкретной критики', null );
insert into sections values ( 113, 11, 'Отдел самокритики', null );
insert into sections values ( 121, 12, 'Отдел позитивной критики', null );
insert into sections values ( 122, 12, 'Отдел негативной критики', null );
insert into sections values ( 131, 13, 'Отдел внутреннего контроля', null );
insert into sections values ( 211, 21, 'Отдел изучения эфирных оболочек', null );
insert into sections values ( 212, 21, 'Спиритический отдел', null );
insert into sections values ( 222, 22, 'Отдел астральных проекций', null );
insert into sections values ( 222, 23, 'Отдел астральных путешествий', null );
insert into sections values ( 511, 51, 'Отдел маскирования чувствительных данных', null );
insert into sections values ( 512, 51, 'Отдел маскирования персональных данных', null );
insert into sections values ( 513, 51, 'Организационно-методологический отдел', null );
insert into sections values ( 521, 52, 'Отдел трансформации данных', null );
insert into sections values ( 522, 52, 'Отдел  трансформации метаданных', null );
insert into sections values ( 531, 53, 'Отдел металингвистического моделирования', null );
insert into sections values ( 532, 53, 'Отдел метафизических исследований', null );
insert into sections values ( 533, 53, 'Отдел квантовой хромодинамики', null );


create table specialites (
  id integer primary key,
  name varchar2(250) not null
);

insert into specialites values (1, 'Математика' );
insert into specialites values (2, 'Прикладная математика' );
insert into specialites values (3, 'Информационные технологии' );
insert into specialites values (4, 'Физика' );
insert into specialites values (5, 'Метафизика' );
insert into specialites values (6, 'Психология' );
insert into specialites values (7, 'Парапсихология' );
insert into specialites values (8, 'Философия' );
insert into specialites values (9, 'Разведывательная деятельность' );
insert into specialites values (10, 'Контрразведывательная деятельность' );


create table highscools (
  id integer primary key,
  name varchar2(250) not null,
  city integer references rf_cities(id)
);

insert into highscools values (1, 'Санкт-Петербургский государственный университет', 7800);
insert into highscools values (2, 'Северо-западная академия ФСБ РФ', 7800);
insert into highscools values (3, 'Морская техническая академия', 7810);
insert into highscools values (4, 'Московский государственный университет', 7700);
insert into highscools values (5, 'Российская академия антропософии', 7700);
insert into highscools values (6, 'Академия ФСБ РФ', 7700);
insert into highscools values (7, 'Дальневосточный федеральный университет', 2500);
insert into highscools values (8, 'Северный (арктический) федеральный университет', 2900);
insert into highscools values (9, 'Балтийский федеральный университет им. Иммануила Канта', 3900);
insert into highscools values (10, 'Крымский федеральный университет', 9100);
insert into highscools values (11, 'Севастопольский государственный университет', 9200);
insert into highscools values (12, 'Таймырская сельскохозяйственная академия', 2410);
insert into highscools values (13, 'Институт мерзлотоведения', 1410);
insert into highscools values (14, 'Вологодский государственный университет', 3500);
insert into highscools values (15, 'Череповецкий государственный университет', 3510);



create table diplomas (
  id integer primary key,
  seria varchar2(250) not null,
  num varchar2(250) not null,
  hs integer references highscools(id),
  spec integer references specialites(id)
);

insert into diplomas values ( 1, 'НД', '123678', 1, 1 );
insert into diplomas values ( 2, 'НЛ', '623178', 2, 10 );
insert into diplomas values ( 3, 'ХЗ', '567890', 6, 9 );
insert into diplomas values ( 4, 'ПЗ', '563811', 4, 2 );
insert into diplomas values ( 5, 'ДУ', '517891', 13, 3 );
insert into diplomas values ( 6, 'ВА', '666777', 4, 4 );
insert into diplomas values ( 7, 'АБ', '028100', 4, 5 );
insert into diplomas values ( 8, 'ТД', '256780', 5, 6 );
insert into diplomas values ( 9, 'ИИ', '112234', 5, 6 );
insert into diplomas values ( 10, 'ПЩ', '908007', 11, 7 );
insert into diplomas values ( 11, 'КВ', '578900', 10, 8 );
insert into diplomas values ( 12, 'СС', '561234', 9, 1 );
insert into diplomas values ( 13, 'СТ', '367110', 8, 1 );
insert into diplomas values ( 14, 'УМ', '327898', 3, 3 );
insert into diplomas values ( 15, 'МГ', '557799', 2, 2 );
insert into diplomas values ( 16, 'ГТ', '984567', 1, 2 );
insert into diplomas values ( 17, 'ТИ', '123321', 2, 6 );
insert into diplomas values ( 18, 'ТС', '678901', 3, 7 );
insert into diplomas values ( 19, 'ЧП', '765443', 4, 1 );
insert into diplomas values ( 20, 'КУ', '128121', 5, 3 );
insert into diplomas values ( 21, 'ЮЮ', '137819', 6, 5 );
insert into diplomas values ( 22, 'ЦЫ', '909088', 7, 5 );
insert into diplomas values ( 23, 'ФЦ', '551221', 8, 1 );
insert into diplomas values ( 24, 'ШО', '456359', 9, 2 );
insert into diplomas values ( 25, 'ША', '786322', 10, 2 );
insert into diplomas values ( 26, 'РП', '876900', 11, 8 );
insert into diplomas values ( 27, 'ЛД', '002298', 12, 6 );
insert into diplomas values ( 28, 'ИС', '010355', 13, 8 );
insert into diplomas values ( 29, 'ТР', '476698', 14, 8 );
insert into diplomas values ( 30, 'ЗШ', '239320', 15, 1 );



create table mil_ranks (
  id integer primary key,
  name varchar2(250) not null
);

insert into mil_ranks values (1, 'рядовой');
insert into mil_ranks values (2, 'матрос');
insert into mil_ranks values (3, 'ефрейтор');
insert into mil_ranks values (4, 'младший сержант');
insert into mil_ranks values (5, 'сержант');
insert into mil_ranks values (6, 'старший сержант');
insert into mil_ranks values (7, 'старшина');
insert into mil_ranks values (8, 'прапорщик');
insert into mil_ranks values (9, 'мичман');
insert into mil_ranks values (10, 'лейтенант');
insert into mil_ranks values (11, 'майор');
insert into mil_ranks values (12, 'подполковник');
insert into mil_ranks values (13, 'полковник');
insert into mil_ranks values (14, 'капитан 1-го ранга');
insert into mil_ranks values (15, 'капитан 2-го ранга');



create table mil_specs (
  id integer primary key,
  name varchar2(250) not null
);

insert into mil_specs values (1, 'мотострелок');
insert into mil_specs values (2, 'матрос');
insert into mil_specs values (3, 'разведчик');
insert into mil_specs values (4, 'оператор БПЛА');
insert into mil_specs values (5, 'танкист');
insert into mil_specs values (6, 'артиллерист');
insert into mil_specs values (7, 'матрос подводной лодки');
insert into mil_specs values (8, 'десантник');
insert into mil_specs values (9, 'радиотелефонист');
insert into mil_specs values (10, 'пилот');
insert into mil_specs values (11, 'бортмеханик');
insert into mil_specs values (12, 'повар');
insert into mil_specs values (13, 'фельдшер');
insert into mil_specs values (14, 'боцман');
insert into mil_specs values (15, 'капитан корабля');



create table militaries (
  id integer primary key,
  seria varchar2(250) not null,
  num varchar2(250) not null,
  rank integer references mil_ranks(id),
  spec integer references mil_specs(id)
);

insert into militaries values ( 1, 'НЧ', '1231678', 1, 1 );
insert into militaries values ( 2, 'НЛ', '6123178', 2, 10 );
insert into militaries values ( 3, 'ХЗ', '5067890', 6, 9 );
insert into militaries values ( 4, 'ПЗ', '5638311', 4, 2 );
insert into militaries values ( 5, 'ДУ', '5917891', 13, 3 );
insert into militaries values ( 6, 'ВА', '6667770', 4, 4 );
insert into militaries values ( 7, 'АБ', '0281005', 4, 5 );
insert into militaries values ( 8, 'ТД', '2565780', 5, 6 );
insert into militaries values ( 9, 'ИИ', '1122434', 5, 6 );
insert into militaries values ( 10, 'ПХ', '9808007', 11, 7 );
insert into militaries values ( 11, 'КВ', '5789200', 10, 8 );
insert into militaries values ( 12, 'ПР', '1561234', 9, 1 );
insert into militaries values ( 13, 'СМ', '0367110', 8, 1 );
insert into militaries values ( 14, 'УМ', '8327898', 3, 3 );
insert into militaries values ( 15, 'МГ', '9557799', 2, 2 );
insert into militaries values ( 16, 'ГТ', '9849567', 1, 2 );
insert into militaries values ( 17, 'ТИ', '1239321', 2, 6 );
insert into militaries values ( 18, 'ТС', '6738901', 3, 7 );
insert into militaries values ( 19, 'ЧП', '7655443', 4, 1 );
insert into militaries values ( 20, 'КУ', '1228121', 5, 3 );
insert into militaries values ( 21, 'ЮЮ', '1378119', 6, 5 );
insert into militaries values ( 22, 'ЦЫ', '9019088', 7, 5 );
insert into militaries values ( 23, 'ФЦ', '5510221', 8, 1 );
insert into militaries values ( 24, 'ШП', '4566359', 9, 2 );
insert into militaries values ( 25, 'ША', '7867322', 10, 2 );
insert into militaries values ( 26, 'РП', '8769080', 11, 8 );
insert into militaries values ( 27, 'ЛД', '8002298', 12, 6 );
insert into militaries values ( 28, 'ИС', '0102355', 13, 8 );
insert into militaries values ( 29, 'ТР', '4766698', 14, 8 );
insert into militaries values ( 30, 'ЗГ', '2393320', 15, 1 );




create table employee (
  id integer primary key,
  family varchar2(250) not null,
  name varchar2(250) not null,
  surname varchar2(250),
  birthdate date not null,
  age integer not null,
  jobdate date not null,
  snils varchar2(14) not null,
  inn varchar2(12),
  passport varchar2(10) not null,
  birthcity integer references rf_cities(id),
  address integer references addresses(id),
  dept integer references departments(id),  
  dir integer references directions(id),  
  section integer references sections(id),  
  job integer references jobs(id),
  salary number,
  diploma integer references diplomas(id),
  military integer references militaries(id)
);  



alter table departments add constraint c_boss foreign key(boss) references employee(id);

update departments set boss=2 where id=1;
update departments set boss=3 where id=2;
update departments set boss=4 where id=3;
update departments set boss=5 where id=4;
update departments set boss=6 where id=5;


alter table directions add constraint cc_boss foreign key(boss) references employee(id);

update directions set boss=7 where id=11;
update directions set boss=8 where id=12;
update directions set boss=9 where id=13;
update directions set boss=10 where id=21;
update directions set boss=11 where id=22;
update directions set boss=12 where id=23;
update directions set boss=13 where id=31;
update directions set boss=14 where id=32;
update directions set boss=15 where id=41;
update directions set boss=16 where id=42;
update directions set boss=17 where id=43;
update directions set boss=18 where id=51;
update directions set boss=19 where id=52;
update directions set boss=20 where id=53;




alter table sections add constraint ccc_boss foreign key(boss) references employee(id);

update sections set boss=21 where id=521;
update sections set boss=22 where id=522;
update sections set boss=23 where id=533;



insert into employee values ( 1, 'Петров', 'Петр', 'Петрович', to_date('01.08.1960','DD.MM.YYYY'), 63, to_date('10.03.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 1000, 1, null, null, null, 1, 1000000, 1, 1 );

insert into employee values ( 2, 'Петридзе', 'Зураб', 'Тимурович', to_date('10.01.1970','DD.MM.YYYY'), 54, to_date('10.03.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 1400, 2, 1, null, null, 3, 510000, 2, 2 );
insert into employee values ( 3, 'Петросян', 'Петрос', 'Петрович', to_date('10.01.1970','DD.MM.YYYY'), 54, to_date('10.03.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 1500, 3, 2, null, null, 3, 500000, 3, 3 );
insert into employee values ( 4, 'Петровов', 'Петр', 'Иванович', to_date('10.01.1970','DD.MM.YYYY'), 54, to_date('10.03.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2300, 4, 3, null, null, 3, 502000, 4, 4 );
insert into employee values ( 5, 'Петрищев', 'Павел', 'Львович', to_date('10.01.1971','DD.MM.YYYY'), 53, to_date('10.03.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2400, 5, 4, null, null, 3, 513000, 5, 5 );
insert into employee values ( 6, 'Петрик', 'Агафон', 'Пантелеймонович', to_date('10.01.1970','DD.MM.YYYY'), 54, to_date('10.03.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2500, 6, 5, null, null, 3, 510000, 6, 6 );

insert into employee values ( 7, 'Иванов', 'Агафон', 'Сидорович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2900, 7, null, 11, null, 5, 300000, 7, 7 );
insert into employee values ( 8, 'Иванищев', 'Иван', 'Иванович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 3500, 8, null, 12, null, 5, 300000, 8, 8 );
insert into employee values ( 9, 'Иванюк', 'Сергей', 'Миронович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 3900, 9, null, 13, null, 5, 300000, 9, 9 );

insert into employee values ( 10, 'Сидоров', 'Денис', 'Сидорович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 6600, 10, null, 21, null, 5, 300000, 10, 10 );
insert into employee values ( 11, 'Сидорян', 'Иван', 'Михайлович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 7600, 11, null, 22, null, 5, 300000, 11, 11 );
insert into employee values ( 12, 'Исидоров', 'Сергей', 'Петрович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 7700, 12, null, 23, null, 5, 300000, 12, 12 );

insert into employee values ( 13, 'Кузьмин', 'Давид', 'Моисеевич', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 7800, 13, null, 31, null, 5, 300000, 13, 13 );
insert into employee values ( 14, 'Кузькин', 'Станислав', 'Федорович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 9100, 14, null, 32, null, 5, 300000, 14, 14 );

insert into employee values ( 15, 'Дубов', 'Эразм', 'Тамерланович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 9200, 15, null, 41, null, 5, 300000, 15, 17 );
insert into employee values ( 16, 'Дубадзе', 'Петр', 'Трифонович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 1010, 16, null, 42, null, 5, 300000, 16, 16 );
insert into employee values ( 17, 'Дуб', 'Антонина', 'Ивановна', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 1410, 17, null, 43, null, 5, 300000, 17, 15 );

insert into employee values ( 18, 'Бородина', 'Ирина', 'Вениаминовна', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 1510, 18, null, 51, null, 5, 300000, 18, 18 );
insert into employee values ( 19, 'Борода', 'Антон', 'Антонович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2310, 19, null, 52, null, 5, 300000, 19, 19 );
insert into employee values ( 20, 'Бородачев', 'Карл', 'Осипович', to_date('10.10.1980','DD.MM.YYYY'), 44, to_date('20.04.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2410, 20, null, 53, null, 5, 300000, 20, 20 );

insert into employee values ( 21, 'Заворотнюк', 'Зевс', 'Борисович', to_date('20.10.1990','DD.MM.YYYY'), 33, to_date('20.05.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2510, 21, null, null, 521, 7, 210000, 21, 21 );
insert into employee values ( 22, 'Заворотникова', 'Каролина', 'Станиславовна', to_date('20.10.1990','DD.MM.YYYY'), 33, to_date('20.05.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 2910, 22, null, null, 522, 7, 220000, 22, 22 );
insert into employee values ( 23, 'Заворотилов', 'Олег', 'Олегович', to_date('20.10.1990','DD.MM.YYYY'), 33, to_date('20.05.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 3510, 23, null, null, 533, 7, 205000, 23, 23 );

insert into employee values ( 24, 'Плетнев', 'Артемий', 'Борисович', to_date('20.10.1995','DD.MM.YYYY'), 28, to_date('20.06.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 3910, 24, null, null, 521, 9, 120000, 24, 24 );
insert into employee values ( 25, 'Козлов', 'Иван', 'Никтополионович', to_date('20.10.1995','DD.MM.YYYY'), 28, to_date('20.06.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 6610, 25, null, null, 522, 10, 100000, 25, 25 );
insert into employee values ( 26, 'Кобылина', 'Ольга', 'Егоровна', to_date('20.10.1995','DD.MM.YYYY'), 28, to_date('20.06.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 7610, 26, null, null, 521, 11, 99000, 26, 26 );
insert into employee values ( 27, 'Батраков', 'Лев', 'Моисеевич', to_date('20.10.1995','DD.MM.YYYY'), 28, to_date('20.06.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 7710, 27, null, null, 521, 12, 98000, 27, 27 );
insert into employee values ( 28, 'Трубач', 'Гарольд', 'Ильич', to_date('20.10.1995','DD.MM.YYYY'), 28, to_date('20.06.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 7810, 28, null, null, 522, 13, 95000, 28, 28 );
insert into employee values ( 29, 'Навагина', 'Семирамида', 'Аполлоновна', to_date('20.10.1995','DD.MM.YYYY'), 28, to_date('20.06.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 9110, 29, null, null, 533, 14, 93000, 29, 29 );
insert into employee values ( 30, 'Тротилов', 'Эквивалент', 'Владленович', to_date('20.10.1995','DD.MM.YYYY'), 28, to_date('20.06.2010','DD.MM.YYYY'), '000-000-000-00', '000000000000', '0000000000', 9210, 30, null, null, 533, 15, 90000, 30, 30 );


ПРИМЕЧАНИЕ
Я заполнил нулями СНИЛСЫб ИНН и СЕРИИ-НОМЕРА ПАСПАРТОВ, т.к. не могу сгенерить проходящие контроли (в т.ч. серии паспортов - на соответствие возрасту).
Это должны будут сделать хакатонщики. 
Число полных лет (age) также должно биться с датой рождения, дата приёмак на работу - быть больше даты рождения и т.п.



create table paytypes (
  id integer primary key,
  name varchar2(250) not null
);

insert into paytypes values ( 1, 'зарплата' );
insert into paytypes values ( 2, 'премия' );
insert into paytypes values ( 3, 'отпускные' );


create table pays (
  paydt date not null,
  emp integer references employee(id),
  paytype integer references paytypes(id),
  sum number not null,
  tax number not null
);


insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 1, 1, 500000, 65000 );
insert into pays values( to_date('31.05.2024','DD.MM.YYYY'), 1, 3, 2500000, 375000 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 2, 1, 200000, 26000 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 3, 1, 200000, 26000 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 4, 1, 200000, 26000 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 5, 1, 200000, 26000 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 6, 1, 200000, 26000 );
insert into pays values( to_date('29.05.2024','DD.MM.YYYY'), 6, 2, 100000, 13000 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 24, 1, 50000, 26000 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 25, 1, 60000, 7800 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 26, 1, 50000, 6500 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 27, 1, 50000, 6500 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 28, 1, 50000, 6500 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 29, 1, 50000, 6500 );
insert into pays values( to_date('15.05.2024','DD.MM.YYYY'), 30, 1, 50000, 6500 );

ПРИМЕЧАНИЕ
Выплачиваемые зарплаты не могут быть больше окладов (а отпускные и премии - могут), должны биться с налогами и т.п.
