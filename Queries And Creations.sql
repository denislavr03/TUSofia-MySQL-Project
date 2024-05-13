create database termPaper;
use termPaper;

create table users (
id int auto_increment primary key,
ip varchar(50),
firstName varchar(50) default null,
lastName varchar(50) default null,
username varchar(30) default null,
pass varchar(30) default null,
userType ENUM('Гост','Потребител','Администратор'),
email varchar(50) default null);

create table genres (
id int auto_increment primary key,
genre ENUM('Фентъзи', 'Ужаси', 'Трилър', 'Научна статия', 'Списания'),
issue int default null);

create table publishers (
id int auto_increment primary key,
publisher ENUM('Жанет 45','Колибри', 'Изток-Запад', 'Сиела', 'Бард'));

create table authors (
id int auto_increment primary key,
authorName varchar(100));

create table books (
id int auto_increment primary key,
title varchar(50),
totalPages int,
releaseYear int,
gID int,
foreign key (gID) references genres(id),
aID int,
foreign key (aID) references authors(id),
pID int,
foreign key (pID) references publishers(id));

create table archivedBooks (
id int auto_increment primary key,
pagesRead int,
rating ENUM('0.5','1','1.5','2','2.5','3','3.5','4','4.5','5'),
bID int,
foreign key (bID) references books(id),
uID int,
foreign key (uID) references users(id));




INSERT INTO users (ip, firstName, lastName, username, pass, userType, email)
VALUES
('192.168.0.1', 'Иван', 'Иванов', 'ivan_ivanov', 'ivan123', 'Потребител', 'ivanivanov@gmail.com'),
('10.0.0.1', null, null, null, null, 'Гост', null),
('172.16.0.1', 'Мария', 'Георгиева', 'maria_georgieva', 'maria789', 'Потребител', 'mariaGeorg123@yahoo.com'),
('192.168.1.1', 'Георги', 'Димитров', 'georgi_dimitrov', 'georgi012', 'Потребител', 'georgiDm95@mail.bg'),
('10.0.0.2', 'Елена', 'Стоянова', 'elena_stoyanova', 'elena345', 'Потребител', 'eli_stoyanowa@gmail.com'),
('192.168.2.1', null, null, null, null, 'Гост', null),
('10.0.0.3', 'Анна', 'Петкова', 'anna_petkova', 'anna901', 'Потребител', 'annaPtkv1@yahoo.com'),
('172.16.0.2', null, null, null, null, 'Гост', null),
('192.168.3.1', 'Димитър', 'Петров', 'dimitar_petrov', 'dimitar567', 'Потребител', 'dimitarP77@gmail.com'),
('10.0.0.4', 'Йордан', 'Иванов', 'yordan_ivanov', 'yordan890', 'Потребител', 'yordan40@abv.bg'),
('172.16.0.3', 'Александра', 'Георгиева', 'alexandra_georgieva', 'alexandra123', 'Потребител', 'alexandraG1@yahoo.com'),
('192.168.4.1', null, null, null, null, 'Гост', null),
('10.0.0.5', 'Емилия', 'Стефанова', 'emilia_stefanova', 'emilia789', 'Потребител', 'emiliankata@gmail.com'),
('172.16.0.4', 'Росен', 'Николов', 'rosen_nikolov', 'rosen012', 'Потребител', 'roskata69@abv.bg'),
('192.168.5.1', null, null, null, null, 'Гост', null),
('10.0.0.6', null, null, null, null, 'Гост',null),
('172.16.0.5', 'Марин', 'Георгиев', 'marin_georgiev', 'marin901', 'Администратор', 'marin901@gmail.com'),
('192.168.6.1', null, null, null, null, 'Гост', null),
('10.0.0.7', 'Радослав', 'Димитров', 'radoslav_dimitrov', 'radoslav567', 'Потребител', 'radoslav5@yahoo.com'),
('172.16.0.6', 'Надежда', 'Петкова', 'nadezhda_petkova', 'nadezhda890', 'Администратор', 'nadezhda01@mail.bg')
('10.16.0.3','Ивайло', null, 'ivaylo','ivaylo412', 'Потребител','ivayloludiq@gmail.com');

INSERT INTO genres (genre, issue)
VALUES
('Фентъзи', null),
('Ужаси', null),
('Трилър', null),
('Трилър', null),
('Списания', 51),
('Списания', 30),
('Ужаси',null),
('Трилър',null),
('Научна статия',null),
('Трилър',null),
('Списания', 3),
('Фентъзи',null),
('Ужаси',null),
('Трилър',null),
('Научна статия',null),
('Научна статия',null),
('Списания', 21);

INSERT INTO publishers (publisher)
VALUES
('Бард'),
('Колибри'),
('Изток-Запад'),
('Сиела'),
('Бард'),
('Сиела'),
('Жанет 45'),
('Жанет 45'),
('Колибри'),
('Сиела'),
('Бард'),
('Сиела'),
('Сиела'),
('Жанет 45'),
('Колибри'),
('Изток-Запад'),
('Бард');

INSERT INTO authors (authorName) VALUES
('Елин Пелин'),
('Иван Вазов'),
('Христо Ботев'),
('Пейо Яворов'),
('Димчо Дебелянов'),
('Гео Милев'),
('Емануил Попдимитров'),
('Никола Вапцаров'),
('Иван Цанов'),
('Иван Минчов'),
('Емил Константинов Георгиев'),
('Гео Милев'),
('Елисавета Багряна'),
('Атанас Далчев'),
('Георги Райчев'),
('Валери Петров'),
('Светослав Минков');

INSERT INTO books (title, totalPages, releaseYear, gID, aID, pID)
VALUES
('Под игото', 320, 1877, 3, 2, 2),
('Тютюн', 250, 1894, 5, 3, 3),
('През прозореца', 180, 1907, 4, 4, 4),
('Зад Байкал', 400, 1942, 1, 5, 1),
('Стъпки в пустинята', 280, 1912, 3, 6, 2),
('Бай Ганьо', 270, 1895, 5, 7, 3),
('Дядо Йоцо огорченият', 300, 1900, 4, 8, 4),
('На светло', 240, 1900, 2, 9, 5),
('Черната баща', 350, 1953, 1, 10, 1),
('Очакването', 210, 1898, 4, 11, 2),
('Къщата на кристала', 290, 1923, 3, 12, 3),
('Сиромашко пролетно море', 180, 1915, 5, 13, 4),
('Всичко', 320, 1882, 3, 14, 5),
('Петте плодове', 250, 1890, 5, 15, 1),
('Странната смърт на Илия Муромеца', 400, 1937, 1, 16, 2),
('Хайка за вълци', 270, 1924, 3, 17, 3),
('Тихият Дон', 300, 1940, 4, 1, 4);

INSERT INTO archivedBooks (pagesRead, rating, bID, uID)
VALUES
(150, '4', 1, 14),
(180, '3.5', 3, 2),
(165, '5', 2, 20),
(250, '4.5', 4, 4),
(200, '3', 11, 5),
(222, '2.5', 6, 7),
(270, '4', 7, 6),
(243, '3.5', 17, 13),
(384, '2', 15, 19),
(210, '1.5', 10, 2),
(210, '4.5', 11, 1),
(230, '3.5', 2, 11),
(250, '5', 14, 10),
(92, '4', 14, 14),
(21, '2.5', 7, 6),
(58, '4.5', 8, 15),
(142, '3.5', 17, 17),
(227, '2', 1, 18),
(190, '1.5', 11, 9),
(213, '4.5', 4, 20),
(42, '4', 1, 1),
(153, '3.5', 12, 4),
(245, '5', 17, 7),
(253, '4.5', 4, 14),
(180, '3', 3, 5),
(152, '2.5', 16, 4),
(31, '4', 8, 18),
(85, '3.5', 9, 18),
(280, '2', 5, 19),
(64, '1.5', 12, 20),
(13, '4.5', 1, 1),
(365, '3.5', 15, 12),
(39, '5', 13, 8),
(94, '4', 3, 3),
(301, '2.5', 9, 1),
(274, '4.5', 1, 16),
(16, '3.5', 6, 17),
(47, '2', 3, 20),
(75, '1.5', 14, 19),
(320, '4.5', 13, 2);



-- задача 2: select с ограничаващо условие: изкарване на информацията за "Потребители" с попълнено първо и последно име
select * from users
where userType = 'Потребител'
and firstName is not null
and lastName is not null;
-- в този случай последния запис 21 не се показва, понеже няма lastname

-- задача 3: агрегатна функция с group by: среден брой прочетени страници подредени по заглавие на книга
select b.title, round(avg (ab.pagesRead),2) as averagePages
from archivedBooks ab
join books b on ab.bID = b.id
group by b.title;

-- задача 4: inner join: заглавие на книги и техните жанрове
select b.title, g.genre
from books b
inner join genres g on b.gID = g.id;

-- задача 5: outer join: показва информация за "Потребителите" и "Админите" за броя прочетени страници
select u.username, b.title,  ab.pagesRead, ab.rating
from users u
left outer join archivedBooks ab on u.id = ab.uID
left outer join books b on ab.bID=b.id
where u.userType != 'Гост';
-- в този случай последния запис в users ще има полета null, понеже не е прочел никакви книги

-- задача 6: вложен select: имената на потребителите и техния брой архивирани книги
select 
    u.username, (
    select count(*) 
    from archivedBooks 
    where u.id = archivedBooks.uID) as count
from 
    users u
where u.userType != 'Гост';

-- задача 7: join и агрегатна функция: броят на архивираните записи за всяка книга
select b.title, count(ab.id) as count
from books b
inner join archivedBooks ab on b.id = ab.bID
group by b.title;

-- задача 8: тригер: автоматичен среден рейтинг в books
DELIMITER $$
create trigger avgRatingBooks after insert on archivedBooks
for each row
begin
    declare avg_rating decimal(3,1);
    select round(avg(rating), 1) into avg_rating
    from archivedBooks
    where bID = new.bID;
    
    update books
    set averageRating = avg_rating
    where id = new.bID;
end$$
DELIMITER ;

DELIMITER $$

create trigger averageRatingBooks after insert on archivedBooks
for each row
begin
    declare avg_rating decimal(3,1);
	select round(avg(rating), 1) into avg_rating
    from archivedBooks
    where bID = new.bID;
	update books
    set averageRating = avg_rating/2
    where id = new.bID;
end$$

DELIMITER ;

INSERT INTO archivedBooks (pagesRead, rating, bID, uID)
VALUES
(150, '3', 1, 14),
(180, '2.5', 2, 2),
(165, '3', 3, 20),
(250, '3.5', 4, 4),
(200, '1', 5, 5),
(222, '4.5', 6, 7),
(270, '5', 7, 6),
(243, '2.5', 8, 13),
(384, '3', 9, 19),
(210, '2.5', 10, 2),
(210, '3.5', 11, 1),
(230, '2.5', 12, 11),
(250, '1', 13, 10),
(92, '5', 14, 14),
(21, '4.5', 15, 6),
(58, '2.5', 16, 15),
(142, '1.5', 17, 17);

-- задача 9: процедура: показване на информация за потребителя
DELIMITER //

create procedure userInfo()
begin
    declare isDone boolean default false;
    declare pUID int;
    declare pUsername varchar(50);
    
    declare crsr cursor for
        select id, username from users;
    
    declare continue handler for not found set isDone = true;
    
    open crsr;
    
    readLoop: loop
        fetch crsr into pUID, pUsername;
        if isDone then
            leave readLoop;
        end if;

        select concat('ID: ', pUID, ', username: ', pUsername);
    end loop;
    
    close crsr;
    
end//

DELIMITER ;

call userInfo();