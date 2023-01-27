/*
   CONTENT: INSERTING TEST/MOCK VALUES INTO TABLES
   DISCLAIMER: EVERY DATA WAS TAKEN FROM MIND AND PERSONAL EXPERIENCE! IF THERE ARE SOME SIMILARITIES, IT IS JUST A COINCIDENCE
*/

INSERT INTO location (id, country, city)
VALUES 
(1, 'Kazakhstan', 'Astana'),
(2, 'Kazakhstan', 'Almaty'),
(3, 'Kazakhstan', 'Shymkent'),
(4, 'Kazakhstan', 'Karaganda'),
(5, 'Russia', 'Moscow'),
(6, 'Russia', 'Saint Petersburg'),
(7, 'Russia', 'Yekaterinburg'),
(8, 'Russia', 'Novosibirsk'),
(9, 'Russia', 'Omsk'),
(10, 'Russia', 'Krasnodar'),
(11, 'Belarus', 'Minsk'),
(12, 'Ukraine', 'Kiev'),
(13, 'Ukraine', 'Kharkiv'),
(14, 'Ukraine', 'Lviv'),
(15, 'Kyrgyzstan', 'Bishkek'),
(16, 'Uzbekistan', 'Tashkent'),
(17, 'Poland', 'Warsaw'),
(18, 'Chech Republic', 'Prague'),
(19, 'Lithuania', 'Vilnius'),
(20, 'Azerbaijan', 'Baku'),
(21, 'Turkey', 'Istanbul'),
(22, 'Turkey', 'Ankara'),
(23, 'Italy', 'Rome'),
(24, 'Italy', 'Milan'),
(25, 'France', 'Paris'),
(26, 'United Kingdom', 'London'),
(27, 'United States', 'New York City'),
(28, 'United States', 'Los Angeles'),
(29, 'United States', 'Miami'),
(30, 'Spain', 'Madrid');

-----------------------

INSERT INTO agency (id, name, email, phone, location_id)
VALUES
(201, 'Sezim', 'sezim@gmail.com', NULL, 2),
(202, 'Sana', 'sana_psych@mailru', '8-717-2234567', 1),
(203, 'Mentalcare', 'ment_care@yahoo.com', NULL, 29),
(204, 'Sau sana', 'sausana_ast@mail.ru', '8-717-2345687', 1),
(205, 'Zehni qulluq', 'zehni_q@gmail.com', NULL, 20),
(206, 'Psixolog.kom', 'psixolog2020@gmail.com', '+994-12-498-0335', 20),
(207, 'Komek', 'komek@mail.ru', '8-727-3456231', 2),
(208, 'Samga', 'sam_ga_12@gmail.com', NULL, 4),
(209, 'Cuicado mental', 'cuic_men@gmail.com', '+34-23-456-765', 30),
(2010, 'Healthy thinking', 'heal_th@gmail.com', '+15854380159', 28),
(2011, 'Pomosh', 'pom_psych@mail.ru', '+79585256063', 7),
(2012, 'Soznanie.ru', 'soznanie_spb@mail.ru', '+79585321143', 6),
(2013, 'Mentalnoye zdorovye', 'ment_zd_msc@mail.ru', NULL, 5),
(2014, 'Qarqyn', 'qarqyn@mail.ru', NULL, 3),
(2015, 'Gulim', 'gulim_komek@mail.ru', '8-701-523-8997', 4);

-----------------------------

INSERT INTO rieltor (id, name, surname, email, phone, agency_id, location_id)
VALUES
(301, 'Gulnara', 'Koraguzova', 'koraguz@mail.ru', '8-747-123-21-45', 202, 1),
(302, 'Jacob', 'Mitchell', 'dr.mitchell@outlook.com', '+14845219783', NULL, 26),
(303, 'Samantha', 'Anders', 'sam_psychology@yahoo.com', '+18143519410', 2010, 28),
(304, 'Yekaterina', 'Andreeva', 'andreeva@gmail.com', '+79585756037', 2013, 5),
(305, 'Marat', 'Azamat', 'm_azamat@mail.ru', '8-701-324-32-45', NULL, 4),
(306, 'Anvar', 'Mammadov', 'mammadov_ps@gmail.com', NULL, 206, 20),
(307, 'Lubov', 'Ustinova', 'ustinova@gmail.com', '+79585345222', NULL, 7),
(308, 'Angelina', 'Dorofeeva', 'psycholog_ang@mail.ru', '+79585654231', NULL, 15),
(309, 'Andreas', 'Paretti', 'doctor.paretti@gmail.com', NULL, 209, 30),
(3010, 'Karina', 'Bekzatova', 'k.bekzatova@outlook.com', '8-708-123-34-65', NULL, 3),
(3011, 'Marina', 'Gavrilova', 'marina_ps@gmail.com', NULL, NULL, 14);

--------------------

INSERT INTO client (id, name, surname, email, phone, location_id)
VALUES
(601, 'Arman', 'Smagulov', 'smagulov@gmail.com', '8-778-343-43-43', 1),
(602, 'Khan', 'Abdu', 'abdukh@yahoo.com', NULL, 23),
(603, 'Ivan', 'Gabrilov', 'gabrilov@gmail.com', '+79585214955', 12),
(604, 'Mukagali', 'Kanaev', 'kanaev_mu@mail.ru', '87716232779', 1),
(605, 'Myla', 'Deepers', 'myla_2012@gmail.com', '+14842658380', 28),
(606, 'Alla', 'Kostromicheva', 'kmodels@mail.ru', NULL, 12),
(607, 'Sarrah', 'Zarova', 'sarrahhh@gmail.com', '8-701-322-32-12', 3),
(608, 'Aron', 'Mahmodov', 'aron_mmm@mail.ru', NULL, 20),
(609, 'Tanisha', 'Donkokluk', 'tan_don@gmail.com', NULL, 27),
(6010, 'Roza', 'Aibatova', 'rozochka@mail.ru', '8-707-547-32-43', 2);

------------------------

INSERT INTO contract (id, date, type, client_id, rieltor_id)
VALUES
(701, '12/23/2020', 'Rent', 602, 301),
(702, '12/23/2020', 'Sell', 605, 304),
(703, '12/1/2020', 'Sell', 606, 302),
(705, '12/2/2020', 'Rent', 601, 309),
(706, '12/4/2020', 'Rent', 609, 3010),
(707, '1/1/2021', 'Rent', 604, 301),
(708, '1/2/2021', 'Sell', 603, 3011),
(709, '1/24/2021', 'Sell', 601, 306),
(7010, '1/16/2021', 'Rent', 607, 307);

---------------------

INSERT INTO bill (id, amount, contract_id)
VALUES
(801, 600000, 702),
(802, 3200, 701),
(803, 2400, 706),
(804, 450000, 703), 
(805, 1800, 705),
(806, 2100, 707),
(807, 750000, 709),
(808, 700000, 708),
(809, 1000, 7010);

---------------------

INSERT INTO review (id, comment, rate, client_id, rieltor_id)
VALUES
(1001, 'Thank you for help', 4, 607, 301),
(1002, 'Conversation was bad', 1, 601, 303),
(1003, 'This was the best cooperation, I am so glad that I met you', 5, 603, 304),
(1004, 'Nice', 5, 602, 309),
(1005, 'Thank you a lot', 4, 604, 309),
(1006, 'This rieltor is not professional at all!', 2, 605, 303),
(1007, 'Just thanks', 5, 6010, 3011),
(1008, 'OMG, million words of happiness', 5, 609, 308),
(1009, 'I recommend this rieltor to everyone', 5, 608, 301),
(10010, 'Good', 3, 602, 309);
