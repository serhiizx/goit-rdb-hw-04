USE LibraryManagement;

INSERT INTO authors (author_name)
VALUES ('Олесь Гончар'),
       ('Леся Українка');

INSERT INTO genres (genre_name)
VALUES ('Роман'),
       ('Драма');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES ('Собор', 1968, 1, 1),
       ('Лісова пісня', 1911, 2, 2);

INSERT INTO users (username, email)
VALUES ('ivan_petrenko', 'ivan.petrenko@example.com'),
       ('olena_koval', 'olena.koval@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES (1, 1, '2026-09-01', '2026-09-15'),
       (2, 2, '2026-09-20', NULL);
