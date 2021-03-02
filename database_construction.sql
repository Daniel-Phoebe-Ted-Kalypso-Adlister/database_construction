CREATE TABLE users (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        email VARCHAR(45) NOT NULL,
                        password VARCHAR(20) NOT NULL,
                        PRIMARY KEY (id)
);
CREATE TABLE ads (
                    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
        title  VARCHAR(50)  NOT NULL,
        description VARCHAR(255) NOT NULL,
        user_id     INT          NOT NULL,
        PRIMARY KEY (id)
        FOREIGN KEY (user_id) REFERENCES users (id)
);

create table ad_categories(
        cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        categories int not null,
        PRIMARY KEY (id),
        FOREIGN KEY (id) REFERENCES ads (id)
);
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES ad_categories (id)
);

