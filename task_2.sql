use alx_book_store

CREATE TABLE IF NOT EXISTS books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)  
);
CREATE TABLE IF NOT EXISTS authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);