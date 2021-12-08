

-- Query: Create 5 different authors: Jane Austen, Emily Dickinson, Fyodor Dostoevsky, William Shakespeare, Lau Tzu

select * from authors;
INSERT INTO `books_schema`.`authors` (`name`) VALUES ('Jane Austin');
INSERT INTO `books_schema`.`authors` (`name`) VALUES ('Emily Dickinson');
INSERT INTO `books_schema`.`authors` (`name`) VALUES ('Fyodor Dostoevsky');
INSERT INTO `books_schema`.`authors` (`name`) VALUES ('William Shakespear');
INSERT INTO `books_schema`.`authors` (`name`) VALUES ('Lau Tzu');

-- Query: Create 5 books with the following names: C Sharp, Java, Python, PHP, Ruby

select * from books;
INSERT INTO `books_schema`.`books` (`title`, `author_id`) VALUES ('C Sharp', '1');
INSERT INTO `books_schema`.`books` (`title`, `author_id`) VALUES ('Java', '1');
INSERT INTO `books_schema`.`books` (`title`, `author_id`) VALUES ('Python', '1');
INSERT INTO `books_schema`.`books` (`title`, `author_id`) VALUES ('PHP', '1');
INSERT INTO `books_schema`.`books` (`title`, `author_id`) VALUES ('Ruby', '1');

-- Query: Change the name of the C Sharp book to C#

update books set title = 'C#' where id = 1;
select * from books;

-- Query: Change the first name of the 4th author to Bill

update authors set name = 'Bill Shakespear' where id = 4;
select * from authors;

-- Query: Have the first author favorite the first 2 books

select * from favorites;
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('1', '1');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('1', '2');


-- Query: Have the second author favorite the first 3 books

INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('2', '1');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('2', '2');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('2', '3');


-- Query: Have the third author favorite the first 4 books

INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('3', '1');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('3', '2');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('3', '3');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('3', '4');

-- Query: Have the fourth author favorite all the books

INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('4', '1');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('4', '2');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('4', '3');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('4', '4');
INSERT INTO `books_schema`.`favorites` (`author_id`, `book_id`) VALUES ('4', '5');
select * from favorites;

-- Query: Retrieve all the authors who favorited the 3rd book

select * from favorites where book_id = 3;

-- Query: Remove the first author of the 3rd book's favorites

delete from favorites where author_id = 2 and book_id = 3;
select * from favorites;

-- Query: Add the 5th author as an other who favorited the 2nd book

insert into favorites (author_id, book_id) values (5, 2);
select * from favorites;

-- Find all the books that the 3rd author favorited

select title from favorites join books on book_id = books.id where favorites.author_id = 3;

-- Query: Find all the authors that favorited to the 5th book

select * from favorites join authors on author_id = authors.id where favorites.book_id = 5;


