USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(150) DEFAULT 'Various Artists',
    name  VARCHAR(150) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(150) DEFAULT 'Bluegrass',
    PRIMARY KEY (id)
);