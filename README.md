README
===========================
2019 COSCUP 用ETL Kettle打造程序流水線
示範程式與周邊環境建置
****
	
|Author|范建銘|
|---|---
|E-mail|freddyfan1011@gmail.com


****
# 周邊環境建置

## FTP服務
docker:
	docker pull bogem/ftp
	docker run -d -v <host自己家的目錄>:/home/vsftpd \
                -p 20:20 -p 21:21 -p 47400-47470:47400-47470 \
                -e FTP_USER=<username> \
                -e FTP_PASS=<password> \
                -e PASV_ADDRESS=<ip> \
                --name ftp \
                --restart=always bogem/ftp

## MariaDB服務
docker:
	docker pull mariadb
	docker run --name coscup-mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=coscup -d mariadb:latest

進入容器:
	docker exec -it <容器編號> /bin/bash
	
	mysql -u root -pcoscup -h 127.0.0.1 -P3306

塞入測試資料:
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

## php服務
docker:
	docker pull php:7.2-apache
	docker run -d -p 80:80 --name my-apache-php-app -v <host自己家的目錄>:/var/www/html php:7.2-apache

## docker-compose
懶人的話可以直接執行專案內的docker-compose.yml，記得改mount的本機目錄。
切換到所在位置目錄:
	docker-compose up -d


