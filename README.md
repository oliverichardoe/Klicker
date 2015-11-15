# Klicker
Ruby On Rails App similar to Flickr and Instagram

- MVC
- MySQL database

Setting your database (MySQL) 
	for Ubuntu 14.04 LTS

- login: $ 
	mysql -u yourUsername -p
(enter your password when prompted)


- create database:
	mysql> create database Klicker_development;

exit mysql (ctrl + D)

- add data: $ 
	mysql -u yourUsername -p Klicker_development < /path/to/Klicker_development.sql
	 (enter your password when prompted)

	* note that you can find file Klicker_development.sql in master branch 

-login

- create user and grant privileges:
	mysql> grant all privileges on Klicker_development.* to 'klickeru'@'localhost' identified by 'klickerupass';


And you're done!!!
