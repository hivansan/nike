
CREATE TABLE branch (
                id BIGINT AUTO_INCREMENT NOT NULL,
                address VARCHAR(120),
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
                description VARCHAR(100) NOT NULL,
                image VARCHAR(100),
                category_id BIGINT NOT NULL,
                video VARCHAR(100),
                PRIMARY KEY (id)
);


ALTER TABLE products ADD CONSTRAINT categories_products_fk
FOREIGN KEY (category_id)
REFERENCES categories (id)
ON DELETE CASCADE
ON UPDATE CASCADE;
