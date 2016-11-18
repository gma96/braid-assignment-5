# braid-assignment-5

Users add data by running braid0.sh

Database Master can enter data through braid2.sh; passwords are unspecified - 
hit 'enter' when prompted

In MYSQL, Database Master manually pulls data from target file braid1.sql
into database 'script' by using command: LOAD DATA INFILE 
'/home/ubuntu/workspace/braid-assignment-5/braid1.sql' IGNORE INTO TABLE script 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'; 


