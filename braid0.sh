
#!/bin/bash

# Q1
echo "What is your name?"
read A1

# Q2
echo "What is the name of the city or town where you were born?"
read A2

# Q3
echo "How many siblings do you have?"
read A3

# Q4
echo "How old are you?"
read A4

# Q5
echo "What is the name of your major/program?"
read A5

# Unique Identifier
ID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 6 | head -n 1)

# Date
DATE=$(date +"%m-%d-%Y")	

# Prints answers, ID, and Date to csv file
echo $A1, $A2, $A3, $A4, $A5, $ID, $DATE >> braid.sql

mysql-ctl cli

CREATE TABLE script (Name VARCHAR(255),
    -> City VARCHAR(255),
    -> Siblings INT,
    -> Age INT,
    -> Major VARCHAR(255),
    -> ID VARCHAR(255),
    -> Date DATE);
    
    INSERT INTO script (Name, City, Siblings, Age, Major, ID, Date)
    VALUES (A1, A2, A3, A4, ID, DATE)