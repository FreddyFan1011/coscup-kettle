CREATE DATABASE coscup;
use coscup;
CREATE TABLE customer(
    name VARCHAR(50),
    sex VARCHAR(1),
   email VARCHAR(50)
);

INSERT INTO customer(name, sex, email) 
 VALUES('Alllen', '1', 'allen@coscoup.com'),
 ('Michelle', '0', 'Michelle@coscoup.com'),
 ('Joy', '1', 'joy@coscoup.com'),
 ('Irta', '0', 'irta@coscoup.com'),
 ('Robert', '1', 'robert@coscoup.com'),
 ('David', '1', 'david@coscoup.com'),
 ('Maggie', '0', 'maggie@coscoup.com');