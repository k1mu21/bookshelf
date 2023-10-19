if exists drop table books

CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    published_year Date NOT NULL,
    genre VARCHAR(255)
);

