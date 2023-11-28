CREATE TABLE authors (
id int,
author_name varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE authors
ADD PRIMARY KEY (`id`);
INSERT INTO authors (id, author_name, created_at, updated_at) VALUES
( 1, 'Brian Christian', '2020-12-11 12:35:02', '2020-12-11 12:35:02'),
( 2, 'Thomas. H. Cormen','2020-12-11 12:35:02','2020-12-11 12:35:02'),
( 3, 'Brian W. Kernighan','2020-12-11 12:35:02','2020-12-11 12:35:02');
CREATE TABLE class (
id int,
class varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE class
ADD PRIMARY KEY (`id`);
INSERT INTO class (id, class, created_at, updated_at) VALUES
(1, '10th', '2020-12-11 12:33:51', '2020-12-11 12:33:51'),
(2, 'Inter', '2020-12-11 12:33:51', '2020-12-11 12:33:51'),
(3, 'B.tech', '2020-12-11 12:33:51', '2020-12-11 12:33:51');
CREATE TABLE subjects (
id int,
class_id varchar(100),
subject varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE subjects
ADD PRIMARY KEY (`id`);
INSERT INTO subjects (id, class_id, subject, created_at, updated_at) VALUES
(1, '1', 'english', '2020-12-11 12:33:30', '2020-12-11 12:33:30'),
(2, '2', 'mathematics', '2020-12-11 12:33:30', '2020-12-11 12:33:30'),
(3, '3', 'science', '2020-12-11 12:33:30', '2020-12-11 12:33:30');
CREATE TABLE shelfs (
id int,
shelf varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE shelfs
ADD PRIMARY KEY (`id`);
INSERT INTO shelfs (`id`, `shelf`, `created_at`, `updated_at`) VALUES
(1, 'Ashelf', '2020-12-11 12:33:06', '2020-12-11 12:33:06'),
(2, 'Bshelf', '2020-12-11 12:33:06', '2020-12-11 12:33:06'),
(3, 'Cshelf', '2020-12-11 12:33:06', '2020-12-11 12:33:06');
CREATE TABLE books (
id int,
book_name varchar(100),
book_entry_date date,
writer varchar(100),
class varchar(100),
subject varchar(100),
shelf_number varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE books
ADD PRIMARY KEY (`id`);
INSERT INTO books (id, book_name, book_entry_date, writer, class, subject, shelf_number, created_at, updated_at) VALUES
(1, 'Englishbook', '2020-05-05', '1', '1', '1', '1', '2020-12-11 12:15:06', '2020-12-11 12:44:49'),
(2, 'mathematics book', '2020-05-06','2', '2', '2', '2', '2020-12-11 12:15:06', '2020-12-11 12:15:06'),
(3, 'Science Book', '2020-05-07','3', '3', '3', '3', '2020-12-11 12:15:06', '2020-12-11 12:15:06');
CREATE TABLE members (
id int,
member_id varchar(100),
address varchar(100),
mobile varchar(100),
alternate_mobile varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE members
ADD PRIMARY KEY (`id`);
INSERT INTO members (id, member_id, address, mobile, alternate_mobile, created_at, updated_at) VALUES
(1, 'M001', 'Hyderabad', '7207255438', '7207255438', '2020-12-11 12:19:34', '2020-12-11 12:47:04'),
(2, 'M002', 'Mumbai', '9563245874','9564211587', '2020-12-11 12:19:34', '2020-12-11 12:19:34'),
(3, 'M003', 'Delhi', '6985422458', '5874522145', '2020-12-11 12:19:34', '2020-12-11 12:19:34');

CREATE TABLE member_ship (
id int,
member_id varchar(100),
membership_type varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE member_ship
ADD PRIMARY KEY (`id`);
INSERT INTO member_ship (id, member_id,membership_type, created_at, updated_at) VALUES
(1, 'M001','1', '2020-12-11 12:47:31', '2020-12-11 12:47:31'),
(2, 'M002','2', '2020-12-11 12:47:31','2020-12-11 12:47:31'),
(3, 'M003','3', '2020-12-11 12:47:31', '2020-12-11 12:47:31');
CREATE TABLE memberships_types (
id int,
membership_types varchar(100),
number_of_books varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE membership_types
ADD PRIMARY KEY (`id`);
INSERT INTO memberships_types (id, membership_type,number_of_books, created_at, updated_at) VALUES
(1, 'Premium','20', '2020-12-11 12:47:31', '2020-12-11 12:47:31'),
(2, 'Gold','10', '2020-12-11 12:47:31','2020-12-11 12:47:31'),
(3, 'Silver','5','2020-12-11 12:47:31', '2020-12-11 12:47:31');
CREATE TABLE issue_books (
id int,
member_id varchar(100),
book_id varchar(100),
issue_date date,
return_date date,
created_at datetime ,
updated_at datetime );
ALTER TABLE issue_books
ADD PRIMARY KEY (`id`);
INSERT INTO issue_books (id, member_id, book_id, issue_date, return_date, created_at, updated_at) VALUES
(1, 'M001', '1', '2020-12-11', '2020-12-20', '2020-12-11 12:23:44', '2020-12-11 12:23:44'),
(2, 'M002', '2', '2020-12-10', '2020-12-15', '2020-12-11 12:23:44', '2020-12-11 12:23:44'),
(3, 'M003', '3', '2020-11-15', '2020-12-05', '2020-12-11 12:23:44', '2020-12-11 12:23:44');
CREATE TABLE fines (
id int,
member_id varchar(100),
book_return_date date,
fine varchar(100),
created_at datetime ,
updated_at datetime );
ALTER TABLE fines
ADD PRIMARY KEY (`id`);
INSERT INTO fines (id, member_id, book_return_date, fine, created_at, updated_at) VALUES
(1, 'M001', '2020-12-20', '120', '2020-12-11 12:25:41', '2020-12-11 12:25:41'),
(2, 'M002', '2020-12-15', '100', '2020-12-11 12:25:41', '2020-12-11 12:25:41'),
(3, 'M003', '2020-12-05', '250', '2020-12-11 12:25:41', '2020-12-11 12:25:41');
SELECT * FROM `membership_types`
 SELECT * FROM `members`
  SELECT * FROM `shelfs`
  SELECT * FROM `authors`
-- Display the count of members in our system?
 SELECT count(*) FROM `members`
 
-- Display the date when the book is entered?
SELECT b.id,b.book_name,b.book_entry_date from books b
 
-- How much fine has been paid based on member id?
 SELECT f.id,f.member_id,f.fine from fines f where f.member_id="M001"
 
-- Dispay the count of books in our system?
 SELECT * FROM members where DATE(created_at) = DATE('2020-12-11')
 
-- For which class books are there in our system?
SELECT b.id,b.book_name,c.class from books b left join class c on b.class=c.id
 
-- Display on which date the record is entered?
 SELECT count(*) FROM `books`
 
--  For which subject which author is assigned in this system?
 SELECT b.id,b.book_name,a.author_name from books b LEFT join authors a on b.writer=a.id
 
--  Display the return date of the book issue based on member id?
SELECT ib.id,ib.member_id,ib.return_date from issue_books ib where ib.member_id="M001"
 
-- In which shelf the particular book is available?
SELECT b.id,b.book_name,s.shelf from books b left join shelfs s on b.shelf_number=s.id
 
-- Which subjects books are there in our system?
 SELECT s.id,c.class,s.subject from subjects s left join class c on s.class_id=c.id
 
--  Display which member took which membership type?
SELECT ms.id,ms.member_id,mt.membership_types from member_ship ms left join membership_types mt on ms.membership_type=mt.id