CREATE DATABASE database_links;

USE database_links;


-- Users table
CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

DESCRIBE users;

-- Links tables
CREATE TABLE links(
    id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE Links
    ADD PRIMARY KEY (id);

ALTER TABLE Links
    MODIFY id INT NOT NULL AUTO_INCREMENT;

DESCRIBE links;