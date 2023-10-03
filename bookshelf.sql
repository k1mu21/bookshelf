drop table books;
drop table users;
drop table loan_status;
drop table floors;
drop table floor_books;
drop table reviews;

create table books(
    ID        Integer Primary key AutoIncrement,
    Title     varchar(255) Not Null,
    Author    varchar(255) Not Null,
    Isbn      varchar(13) Not Null. 
    created_at TimeStamp Default Current_Timestamp
);

create table Users(
    ID Integer Primary key AutoIncrement,
    UserName varchar(50) Not NUll,
    Email varchar(255) Not Null,
    Password varchar(255) Not Null,
    created_at TimeStamp Default Current_Timestamp
);

CREATE TABLE user_books (
    user_id Integer,
    book_id Integer,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id),
    PRIMARY KEY (user_id, book_id)
);


create table loan_status (
    id Integer Primary key AutoIncrement,
    book_id Integer,
    status ENUM('loaned','available') Not Null,
    loan_date date,
    return_date date,
    Foreign Key(user_id) references users(id),
    Foreign key(book_id) references books(id)
);

create table floors (
    id Integer Primary key AutoIncrement,
    floor varchar(255),
    created_at TimeStamp Default Current_Timestamp
);

create table floor_books(
    floor_id Integer,
    book_id Integer,
    Foreign key (floor_id) references floor(id),
    Foreign key (book_id) references books(id),
    Primary key (floor_id,book_id)
);

Create Table reviews (
    id Integer Primary key AutoIncrement,
    user_id Integer,
    books_id Integer,
    reviews_text text,
    rating Integer,
    created_at TimeStamp Default Current_Timestamp,
    Foreign key (user_id) references users(id),
    Foreign key (books_id) references users(id)
);