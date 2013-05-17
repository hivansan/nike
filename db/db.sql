
CREATE TABLE users (
                id INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(255),
                email VARCHAR(255) NOT NULL,
                created_at DATETIME NOT NULL,
                updated_at DATETIME NOT NULL,
                password_digest VARCHAR(255),
                remember_token VARCHAR(255),
                PRIMARY KEY (id)
);


CREATE TABLE commercials (
                id BIGINT AUTO_INCREMENT NOT NULL,
                image VARCHAR(100),
                video VARCHAR(100),
                PRIMARY KEY (id)
);


CREATE TABLE branches (
                id BIGINT AUTO_INCREMENT NOT NULL,
                name VARCHAR(100),
                street VARCHAR(100),
                phone VARCHAR(50),
                delegation VARCHAR(100),
                town VARCHAR(100),
                state VARCHAR(100),
                PRIMARY KEY (id)
);


CREATE TABLE categories (
                id BIGINT AUTO_INCREMENT NOT NULL,
                name VARCHAR(100) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE products (
                id BIGINT AUTO_INCREMENT NOT NULL,
                name VARCHAR(100) NOT NULL,
                description VARCHAR(600) NOT NULL,
                image VARCHAR(100),
                category_id BIGINT NOT NULL,
                video VARCHAR(100),
                qr_code_img VARCHAR(100),
                PRIMARY KEY (id)
);


ALTER TABLE products ADD CONSTRAINT categories_products_fk
FOREIGN KEY (category_id)
REFERENCES categories (id)
ON DELETE CASCADE
ON UPDATE CASCADE;
