DROP DATABASE IF EXISTS `adlister_db`;
CREATE DATABASE adlister_db;
USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email    VARCHAR(75) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username),
    UNIQUE (email)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads (
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(250) NOT NULL,
    description TEXT(1000) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);


DROP TABLE IF EXISTS ad_categories;

CREATE TABLE ad_categories (
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_id       INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (ad_id)
        REFERENCES ads (id)
        ON DELETE CASCADE,
    FOREIGN KEY (category_id)
        REFERENCES categories (id)
        ON DELETE CASCADE
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    ad_id   INT UNSIGNED NOT NULL,
    content VARCHAR(500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (ad_id)
        REFERENCES ads (id)
        ON DELETE CASCADE
        ON UPDATE NO ACTION,
    FOREIGN KEY (user_id)
        REFERENCES users (id)
        ON DELETE CASCADE
        ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS images;

CREATE TABLE images (
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_id       INT UNSIGNED NOT NULL,
    url         VARCHAR(400) NOT NULL,
    description VARCHAR(400) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (ad_id)
        REFERENCES ads (id)
        ON DELETE CASCADE
        ON UPDATE NO ACTION
);
