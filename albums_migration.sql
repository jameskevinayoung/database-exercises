USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist  VARCHAR(50) DEFAULT 'NONE',
  name VARCHAR(200) NOT NULL,
  release_date int ,
  sales FLOAT ,
  genre VARCHAR(250),
  PRIMARY KEY(id)
);