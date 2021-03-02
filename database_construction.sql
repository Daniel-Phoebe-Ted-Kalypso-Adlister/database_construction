CREATE DATABASE adlisters;

USE adlisters;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS ad_categories;
DROP TABLE IF EXISTS categories;

CREATE TABLE users (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        email VARCHAR(45) NOT NULL,
                        password VARCHAR(20) NOT NULL,
                        PRIMARY KEY (id)
);
CREATE TABLE ads (
                    ad_id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
        title  VARCHAR(50)  NOT NULL,
        description VARCHAR(255) NOT NULL,
        user_id     INT UNSIGNED NOT NULL,
        PRIMARY KEY (ad_id),
        FOREIGN KEY (user_id) REFERENCES users (id)
);


CREATE TABLE categories (
    cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (cat_id));
#     FOREIGN KEY (cat_id) REFERENCES ad_categories (cat_id)


create table ad_categories(
          cat_id INT UNSIGNED NOT NULL,
          ad_id INT UNSIGNED NOT NULL,
          FOREIGN KEY (cat_id) REFERENCES categories (cat_id),
          FOREIGN KEY (ad_id) REFERENCES ads (ad_id)
);