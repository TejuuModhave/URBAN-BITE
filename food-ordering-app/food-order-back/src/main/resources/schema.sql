CREATE DATABASE IF NOT EXISTS food_order_db;
USE food_order_db;

CREATE TABLE IF NOT EXISTS meal_type (
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    type_name    VARCHAR(100)  NOT NULL,
    image        LONGTEXT,
    image_name   VARCHAR(255),
    description  VARCHAR(500),
    is_deleted   TINYINT(1)    NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS meal (
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    name         VARCHAR(255)  NOT NULL,
    price        INT           NOT NULL,
    meal_type_id BIGINT,
    image        LONGTEXT,
    image_name   VARCHAR(255),
    description  VARCHAR(500),
    is_deleted   TINYINT(1)    NOT NULL DEFAULT 0,
    CONSTRAINT fk_meal_mealtype FOREIGN KEY (meal_type_id) REFERENCES meal_type (id)
);

CREATE TABLE IF NOT EXISTS user (
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name   VARCHAR(100)  NOT NULL,
    last_name    VARCHAR(100)  NOT NULL,
    username     VARCHAR(100)  NOT NULL UNIQUE,
    password     VARCHAR(255)  NOT NULL,
    email        VARCHAR(255)  NOT NULL UNIQUE,
    role         INT           NOT NULL DEFAULT 1,
    phone_number VARCHAR(20),
    address      VARCHAR(255),
    deleted      TINYINT(1)    NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS final_order (
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id      BIGINT,
    date         DATETIME,
    final_price  INT           NOT NULL DEFAULT 0,
    address      VARCHAR(255),
    phone_number VARCHAR(20),
    status       VARCHAR(50),
    CONSTRAINT fk_order_user FOREIGN KEY (user_id) REFERENCES user (id)
);

CREATE TABLE IF NOT EXISTS order_item (
    id               BIGINT AUTO_INCREMENT PRIMARY KEY,
    final_order_id   BIGINT,
    meal_id          BIGINT,
    meal_name        VARCHAR(255),
    meal_price       INT,
    meal_description VARCHAR(500),
    meal_image       LONGTEXT,
    meal_image_name  VARCHAR(255),
    meal_type_name   VARCHAR(100),
    quantity         INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_item_order FOREIGN KEY (final_order_id) REFERENCES final_order (id),
    CONSTRAINT fk_item_meal  FOREIGN KEY (meal_id)        REFERENCES meal (id)
);

INSERT IGNORE INTO user (id, first_name, last_name, username, password, email, role, phone_number, address, deleted)
VALUES (1, 'Admin', 'User', 'admin', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'admin@foodorder.com', 0, '060123456', 'Admin Street 1', 0);

INSERT IGNORE INTO user (id, first_name, last_name, username, password, email, role, phone_number, address, deleted)
VALUES (2, 'Regular', 'User', 'user', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'user@foodorder.com', 1, '0611234321', 'User Street 2', 0);

INSERT IGNORE INTO user (id, first_name, last_name, username, password, email, role, phone_number, address, deleted)
VALUES (3, 'Employee', 'One', 'employee', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'employee@foodorder.com', 2, '0611234322', 'Employee Street 3', 0);

INSERT IGNORE INTO meal_type (id, type_name, description, is_deleted)
VALUES (1, 'PIZZA', 'Italian style pizzas', 0),
       (2, 'MAIN COURSE', 'Hearty main courses', 0),
       (3, 'SALAD', 'Fresh salads', 0),
       (4, 'PANCAKE', 'Sweet and savory pancakes', 0),
       (5, 'BURGER', 'Juicy burgers', 0);

INSERT IGNORE INTO meal (id, name, price, meal_type_id, description, is_deleted)
VALUES (1, 'CAPRICCIOSA', 600, 1, 'Classic pizza with ham and mushrooms', 0),
       (2, 'SLATKA PALACINKA', 350, 4, 'Sweet pancake with chocolate', 0),
       (3, 'RUSKA SALATA', 350, 3, 'Traditional Russian salad', 0),
       (4, 'MARGHERITA', 550, 1, 'Classic pizza with tomato and mozzarella', 0),
       (5, 'CHEESE BURGER', 700, 5, 'Juicy beef burger with cheese', 0);
