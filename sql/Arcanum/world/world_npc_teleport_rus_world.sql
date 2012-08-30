﻿DROP TABLE IF EXISTS `custom_npc_tele_category`;
CREATE TABLE `custom_npc_tele_category` (
  `id` int(6) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `flag` tinyint(3) unsigned NOT NULL default '0',
  `data0` bigint(20) unsigned NOT NULL default '0',
  `data1` int(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `custom_npc_tele_destination`;
CREATE TABLE `custom_npc_tele_destination` (
  `id` int(6) unsigned NOT NULL auto_increment,
  `name` char(100) NOT NULL default '',
  `pos_X` float NOT NULL default '0',
  `pos_Y` float NOT NULL default '0',
  `pos_Z` float NOT NULL default '0',
  `map` smallint(5) unsigned NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `level` tinyint(3) unsigned NOT NULL default '0',
  `cost` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `custom_npc_tele_association`;
CREATE TABLE `custom_npc_tele_association` (
  `cat_id` int(6) unsigned NOT NULL default '0',
  `dest_id` int(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cat_id`, `dest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

TRUNCATE `custom_npc_tele_category`;
INSERT INTO `custom_npc_tele_category`
   (`id`, `name`, `flag`, `data0`, `data1`)
VALUES
   (1, 'Азерот', 0, 1, 0),
   (2, 'Калимдор', 0, 2, 0),
   (3, 'Нордскол', 0, 0, 0),
   (4, 'Запределье', 0, 0, 0),
   (5, 'Арены', 0, 0, 0),
   (6, '[Инсты для уровней 1-60]', 0, 0, 0),
   (7, '[Инсты для уровней 60+]', 5, 60, 0),
   (8, '[Инсты для уровней 70+]', 5, 70, 0),
   (9, 'Другие напрвления', 3, 0, 0);

TRUNCATE `custom_npc_tele_destination`;
INSERT INTO `custom_npc_tele_destination`
   (`id`, `name`, `pos_X`, `pos_Y`, `pos_Z`, `map`, `orientation`, `level`, `cost`)
VALUES
(1, 'Альтеракская долина-[10 голд]', 883.187, -489.375, 96.7618, 30, 3.06932, 0, 100000),
(2, 'Альтеракская долина-[10 голд]', -818.155, -623.043, 54.0884, 30, 2.1, 0, 100000),
(3, 'Низина Арати-[10 голд]', 686.053, 683.165, -12.9149, 529, 0.18, 0, 100000),
(4, 'Низина Арати-[10 голд]', 1308.68, 1306.03, -9.0107, 529, 3.91285, 0, 100000),
(5, 'Черный храм-[20 голд]', -3610.72, 324.988, 37.4, 530, 3.28298, 0, 200000),
(6, 'Непроглядная Пучина-[10 голд]', 4254.58, 664.74, -29.04, 1, 1.97, 0, 100000),
(7, 'Глубины Черной горы-[20 голд]', -7301.03, -913.19, 165.37, 0, 0.08, 0, 200000),
(8, 'Вершина Черной горы-[20 голд]', -7535.43, -1212.04, 285.45, 0, 5.29, 0, 200000),
(9, 'Логово Крыла Тьмы-[10 голд]', -7665.55, -1102.49, 400.679, 469, 0, 0, 100000),
(10, 'Пещеры Времени-[10 голд]', -8173.66, -4746.36, 33.8423, 1, 4.93989, 0, 100000),
(11, 'Круг Крови-[10 голд]', 2839.44, 5930.17, 11.1002, 530, 3.16284, 0, 100000),
(12, 'Резервуар Кривого Клыка-[10 голд]', 517.288, 6976.28, 32.0072, 530, 0, 0, 100000),
/*Калимдор--->*/(13, 'Дарнас-[10 голд]', 9947.52, 2482.73, 1316.21, 1, 0, 0, 100000),
(14, 'Забытый Город-[20 голд]', -3982.47, 1127.79, 161.02, 1, 0.05, 0, 200000),
(15, 'Экзодар-[10 голд]', -4073.03, -12020.4, -1.47, 530, 0, 0, 100000),
(16, 'Око Бури-[10 голд]', 2487.72, 1609.12, 1224.64, 566, 3.35671, 0, 100000),
(17, 'Око Бури-[10 голд]', 1843.73, 1529.77, 1224.43, 566, 0.297579, 0, 100000),
/* Азерот---> */(18, 'Златоземье-[10 голд]', -9464, 62, 56, 0, 0, 0, 100000),
(19, 'Логово Груула-[10 голд]', 3539.01, 5082.36, 1.69107, 530, 0, 0, 100000),
(20, 'Арена Гурубаши-[10 голд]', -13261.3, 168.294, 35.0792, 0, 1.00688, 0, 100000),
(21, 'Цитадель Адского пламени-[10 голд]', -305.816, 3056.4, -2.47318, 530, 2.01, 0, 100000),
/* Азерот---> */(22, 'Стальгорн-[10 голд]', -4924.07, -951.95, 501.55, 0, 5.4, 0, 100000),
/* Азерот---> */(23, 'Остров Кель-Данас-[15 голд]', 12947.4, -6893.31, 5.68398, 530, 3.09154, 0, 150000),
(24, 'Каражан-[10 голд]', -11118.8, -2010.84, 47.0807, 0, 0, 0, 100000),
(25, 'Мародон-[10 голд]', -1433.33, 2955.34, 96.21, 1, 4.82, 0, 100000),
(26, 'Огненные Недра-[10 голд]', 1121.45, -454.317, -101.33, 230, 3.5, 0, 100000),
(27, 'Проклятый лес-[10 голд]', 3125.18, -3748.02, 136.049, 0, 0, 0, 100000),
(28, 'Логово Ониксии-[10 голд]', -4707.44, -3726.82, 54.6723, 1, 3.8, 0, 100000),
/*Калимдор--->*/(29, 'Оргриммар-[30 голд]', 1552.5, -4420.66, 8.94802, 1, 0, 0, 300000),
/*Калимдор--->*/(30, 'Колючий холм-[30 голд]', 315.721, -4743.4, 10.4867, 1, 0, 0, 100000),
(31, 'Курганы Иглошкурых-[15 голд]', -4645.08, -2470.85, 85.53, 1, 4.39, 0, 150000),
(32, 'Лабиринты Иглошкурых-[15 голд]', -4484.04, -1739.4, 86.47, 1, 1.23, 0, 150000),
(33, 'Круг испытаний-[10 голд]', -1999.94, 6581.71, 11.32, 530, 2.3, 0, 100000),
(34, 'Врата Анкиража-[20 голд]', -8409.03, 1498.83, 27.3615, 1, 2.49757, 0, 200000),
(35, 'Некроситет-[20 голд]', 1219.01, -2604.66, 85.61, 0, 0.5, 0, 200000),
(36, 'Крепость Тёмного клыка-[10 голд]', -254.47, 1524.68, 76.89, 0, 1.56, 0, 100000),
(37, 'Шаттрат-[20 голд]', -1850.21, 5435.82, -10.9614, 530, 3.40391, 0, 200000),
/*Калимдор--->*/(38, 'Луносвет-[50 голд]', 9338.74, -7277.27, 13.7895, 530, 0, 0, 500000),
/* Азерот---> */(39, 'Штормград-[10 голд]', -8960.14, 516.266, 96.3568, 0, 0, 0, 100000),
(40, 'Стратхольм-[10 голд]', 3263.54, -3379.46, 143.59, 0, 0, 0, 100000),
(41, 'Крепость Бурь-[10 голд]', 3089.58, 1399.05, 187.653, 530, 4.79407, 0, 100000),
(42, 'Храм Анкиража-[20 голд]', -8245.84, 1983.74, 129.072, 1, 0.936195, 0, 200000),
(43, 'Мёртвые копи-[10 голд]', -11212, 1658.58, 25.67, 0, 1.45, 0, 100000),
(44, 'Забытый город (Ристалище)-[20 голд]', -3761.49, 1133.43, 132.083, 1, 4.57259, 0, 200000),
(45, 'Монастырь Алого Ордена-[20 голд]', 2843.89, -693.74, 139.32, 0, 5.11, 0, 200000),
(46, 'Затонувший храм-[20 голд]', -10346.9, -3851.9, -43.41, 0, 6.09, 0, 200000),
(47, 'Пещеры стенаний-[20 голд]', -722.53, -2226.3, 16.94, 1, 2.71, 0, 200000),
/*Калимдор--->*/(48, 'Громовой утёс-[10 голд]', -1290, 147.034, 129.682, 1, 4.919, 0, 100000),
(49, 'Ульдаман-[10 голд]', -6119.7, -2957.3, 204.11, 0, 0.03, 0, 100000),
/*Калимдор--->*/(50, 'Подгород-[20 голд]', 1819.71, 238.79, 60.5321, 0, 0, 0, 200000),
(51, 'Ущелье песни войны-[10 голд]', 930.851, 1431.57, 345.537, 489, 0.015704, 0, 100000),
(52, 'Ущелье песни войны-[10 голд]', 1525.95, 1481.66, 352.001, 489, 3.20756, 0, 100000),
(53, 'Зул-Аман-[20 голд]', 6846.95, -7954.5, 170.028, 530, 4.61501, 0, 200000),
(54, 'Зул-Фаррак-[20 голд]', -6839.39, -2911.03, 8.87, 1, 0.41, 0, 200000),
(55, 'Зул-Гуруб-[20 голд]', -11916.7, -1212.82, 92.2868, 0, 4.6095, 0, 200000),
/*Нордскоп */
(56, 'Борейская тундра-[15 голд]',2232.93, 5135.5, 5.344, 571, 0, 58, 150000),
(57, 'Ревущий Фьорд-[15 голд]',592.33,-5095.5,6,571, 0 ,58, 150000),
(58, 'Драконий погост-[15 голд]',2994,-431,124,571, 0 , 58, 150000),
(59, 'Седые холмы-[15 голд]',3264,-4587.4,305,571, 0 , 58, 150000),
(60, 'Зул-Драк-[15 голд]',5443.19,-1244.50,249,571, 0 , 58,150000),
(61, 'Низина Шолазар-[15 голд]',4679.54,5534.24,30,571, 0 , 58,150000),
(62, 'Лес Хрустальной песни-[15 голд]',5626.613770,692.057495,155.459274,571, 0 , 58,150000),
(63, 'Грозовая гряда-[15 голд]',6950.2,-1639.9,811,571, 0 ,58,150000),
(64, 'Ледяная корона-[15 голд]',6603.49,2456.42,481,571 , 0, 58, 150000),
(65, 'Даларан-[15 голд]',5780.27,700.56,650,571,0,58,150000), 
(66, 'ОЛО-[15 голд]',4928.43,3341.9,377,571, 0, 58, 150000),
/*Запределье*/
(67, 'п-ов. Адского Пламени-[20 голд]',-690.621765,2688.105957,94.167122, 530, 2.34, 0, 200000),
(68, 'Долина призрачной луны-[20 голд]', -3532.437744,500.730988,23.343836, 530, 0, 0, 200000),
(69, 'Лес Террокар-[20 голд]', -2000.469971,4451.540039,8.379170 , 530, 0, 0, 200000),
(70, 'Шаттрат-[20 голд]', -1850.21, 5435.82, -10.9614, 530, 3.40391, 0, 200000),
(71, 'Зангартопь-[20 голд]',-54.862099,5813.439941,20.605860 , 530, 0, 0, 200000),
(72, 'Награнд-[20 голд]',-1145.949951,8182.350098,3.602490, 530, 0, 0, 200000),
(73, 'Пустоверть-[20 голд]',3830.229980,3426.50000,88.614502, 530, 0, 0, 200000),
(74, 'Острогорье-[20 голд]',2960.623291,5467.751953,143.896393, 530, 0, 0, 200000),
/* Азерот */
(75, 'Тернистая долина-[20 голд]',-12644.299805,-377.411011,10.102100, 0, 0, 0, 200000),
(76, 'Выженные земли-[20 голд]',-11182.500000,-3016.669922,7.422350, 0, 0, 0, 200000),
(77, 'Красногорье-[20 голд]',-9283.380859,-2238.212891,63.524048, 0, 0, 0, 200000),
(78, 'Нагорье Арати-[20 голд]',-1240.679077,-2510.138184,21.612902 , 0, 0, 0, 200000),
(79, 'Тирисфальские Леса-[20 голд]',2036.642822,163.509277,33.869953, 0, 0, 0, 200000),
/*Калимдор*/
(80, 'Силитус-[20 голд]',-7426.870117,1005.309998,1.133590, 1, 0, 0, 200000),
(81, 'Когтиcтые горы-[20 голд]',1570.920044,1031.520020,137.959000, 1, 0, 0, 200000),
(82, 'Танарис-[20 голд]',-7113.228027,-3768.110352,8.453617, 1, 0, 0, 200000),
(83, 'Фералас-[20 голд]',-4841.1899441,1309.439941,81.393700, 1, 0, 0, 200000),
(84, 'Зимние ключи-[20 голд]',6762.071777,-4422.065918,763.285522 , 1, 0, 0, 200000);

TRUNCATE `custom_npc_tele_association`;
INSERT INTO `custom_npc_tele_association`
  (`cat_id`, `dest_id`)
VALUES
  (1, 18), (1, 22), (1, 23),(1, 39),(1, 75),(1, 76),(1, 77),(1, 78),(1, 79),(2, 23),(2, 15),(2, 13), (2, 29), (2, 30), (2, 38), (2, 48), (2, 50), /*(3, 1), (3, 4), (3, 16), (3, 52),*/(2, 80), (2, 81),(2, 82),(2, 83),(2, 84), (3, 56), (3, 57), (3, 58), (3, 59), (3, 60), (3, 61), (3, 62), (3, 63), (3, 64), (3, 65),(3, 66),(4, 67), (4, 68), (4, 69), (4, 70), (4, 71), (4, 72), (4, 73), (4, 74), (5, 11), (5, 20), (5, 33), (5, 44), (6, 6), (6, 7), (6, 8), (6, 14), (6, 25), (6, 31), (6, 32), (6, 35), (6, 36), (6, 40), (6, 43), (6, 45), (6, 46), (6, 47), (6, 49), (6, 54), (7, 9), (7, 26), (7, 27), (7, 28), (7, 34), (7, 42), (7, 55), (8, 5), (8, 10), (8, 12), (8, 19), (8, 21), (8, 24), (8, 41), (8, 53);

-- `npc_text`
REPLACE INTO `npc_text` (`ID`, `text0_0`) VALUES
   (100000, 'Choose your Category.'),
   (100001, 'Choose your Destination.');

-- `creature_template`
DELETE FROM `creature_template` WHERE `entry` = 100000;
INSERT INTO `creature_template` VALUES (100000, 0, 0, 0, 0, 0, 26502, 0, 0, 0, 'Abisal Vortex', '', '', 0, 83, 83, 0, 35, 35, 1, 1, 1.14286, 2, 1, 509, 683, 0, 805, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 371, 535, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'npc_teleport', 1);
