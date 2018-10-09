USE DATABASE adlister_application_db;

create table users (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(16) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title varchar(250),
    description varchar(500),
    category varchar(100),
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(user_id) REFERENCES  users (id)

);

--users data

INSERT into users(username,email,password)
VALUES ('pattypat', 'pattypat@yoogle.com', 'p@77YPaT!'),
       ('JimmyBean', 'jamesbean@yoogle.com', 'B1g80y$@uc3'),
       ('AlabamaRed', 'allenRedmond@yoogle.com', 'WarT!d#'),
       ('mSCalidron', 'MissSippi@yoogle.com', '5ey3dR1ver'),
       ('purpleKale', 'kellyaldamon@yoogle.com', 'p!nk@ndRed'),
       ('tumcor', 'tumcor@test.com', 'fakepassword'),
       ('okiee', 'okiee@test.com', 'password@1234'),
       ('lutherburger', 'agressivlyamerican@test.com','heartattach4321'),
       ('immacow', 'idontgomeow@test.com', 'igomooooo'),
       ('farelle', 'purpledoge@test.com', 'awooawoo1234');

--ads data

insert into ads (title, discription, category, user_id)
values ('Couch for sell', 'Selling couch for $200 or BO', 'furniture', 1),
       ('Computer Repair', 'Computer repair person, looking for work', 'services', 6),
       ('Bed to good home', 'Giving away slightly-well used bed', 'giveaway', 9),
       ('Handy-Person ASAP', 'Received a free bed, and its broken', 'help wanted', 5),
       ('iPhone Workshop', 'Learn how to use an iPhone', 'tech', 3),
       ('Burger Chief 4 hire', 'Quadruple Bypass might be needed', 'services', 8),
       ('Dog Walker needed', 'Walker needed to walk a leonberger', 'help wanted', 10);

--additional inserts
insert into ads (title, discription, category, user_id)
values ('Android Screen Repair', 'Looking for phone repairs', 'help wanted', 6),
       ('Free Grill Set', 'Small Grill up for grabs', 'giveaway', 8);

INSERT INTO ad_category(ad_id, category_id)
VALUES (1, 2), (2, 5), (3, 3), (4, 1),
       (5, 4), (6, 5), (7, 1);

--question 1

select email
from users
where id in (
  select user_id
  from ads as a where title like 'Handy-Person Asap'
);


--question 2

SELECT a.title, a.discription, a.category
FROM ads AS a
JOIN categories AS c
ON a.category = c.category
WHERE a.id = 6 ;

--question 3
select A.title, A.discription, A.category
from ads as A
join categories as C on A.category = C.category
where C.id = 1;


--question 4
select username, a.title, a.category
from users as u
join ads as a
on u.id = a.user_id
where a.user_id = 3;