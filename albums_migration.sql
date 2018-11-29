USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(120) DEFAULT 'NONE',
    name  VARCHAR(150) NOT NULL,
    date INT UNSIGNED NOT NULL,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(50) DEFAULT "Bluegrass",
    PRIMARY KEY (id)
);