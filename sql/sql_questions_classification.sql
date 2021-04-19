#SQL Questions - Classification

#1. We are creating the new data base calles 'credit_card_classification'. Setting this as the default schema, so we dont need to write it in the code all the time and avoid errors.

CREATE DATABASE credit_card_classification; 

#2. We are creating a table called 'credit_card_data' with tables from the csv.

CREATE TABLE credit_card_data(customer_number	INT(10),
							offer_accepted	VARCHAR(10),
							reward	VARCHAR(100),
							mailer_type	VARCHAR(100),
							income_level	VARCHAR(100),
							num_bank_accounts_open	INT(10),
							overdraft_protection	VARCHAR(10),
							credit_rating	VARCHAR(100),
							num_credit_cards_held	INT(10),
							num_homes_owned	INT(10),
							household_size	INT(10),
							own_your_home	VARCHAR(10),
							average_balance	FLOAT(10, 2),
							q1_balance	FLOAT(10, 2),
							q2_balance	FLOAT(10, 2),
							q3_balance	FLOAT(10, 2),
							q4_balance FLOAT(10, 2) );

#Quickly checking here, if we will see somethin already.
SELECT *
FROM credit_card_data;

#3. Now we are importing the data from the csv file. We are using the Table Data Import Wizard.

#4.After the import, we are now checking, if it worked. And yes, all data is in the correct columns.

SELECT *
FROM credit_card_data;

SELECT count(*)
FROM credit_card_data;
#Unfortunatly we "only" have 17976 out of the 18000 rows. This is a little concerning. Hoever I dont know, why the missing 24 rows went.
#After looking at the data in python I realised, that there are 24 null values, this might be the ones, we are missing here as well.
#As we are going to drop them in python as well, we will be fine with the 17976 for SQL as well.

#5.As we will not need the q4 column, we will drop it from the table.

ALTER TABLE credit_card_data
DROP COLUMN q4_balance;

SELECT *
FROM credit_card_data;
#We see the drop worked, the column q4_balance has been droped.

#6. We use the following sql query to find out how many rows of data we have:

SELECT count(*)
FROM credit_card_data;
#We have 17976 rows in our table credit_card_data.

#7.Now we will try to find the unique values in some of the categorical columns:
#7.A - What are the unique values in the column Offer_accepted?

SELECT DISTINCT c.offer_accepted
FROM credit_card_data c;
#We see that we have only 'yes' and 'no' values in this column.

#7.B - What are the unique values in the column Reward?
SELECT DISTINCT c.reward
FROM credit_card_data c;
#We see that we have 'Air Miles', 'Cash Back' and 'Points' values in this column.

#7.C - What are the unique values in the column mailer_type?
SELECT DISTINCT c.mailer_type
FROM credit_card_data c;
#We see that we have 'Letter' and 'Postcard' values in this column.

#7.D - What are the unique values in the column credit_cards_held?
SELECT DISTINCT c.num_credit_cards_held
FROM credit_card_data c;
#We see that we have values 1-4 in this column.

#7.E - What are the unique values in the column household_size?
SELECT DISTINCT c.household_size
FROM credit_card_data c;
#We see that we have values 1-9 in this column.

#8.No we arrange the data in a decreasing order by the average_balance of the house.
#And we return only the customer_number of the top 10 customers with the highest average_balances in your data.
SELECT customer_number
FROM credit_card_data c
ORDER BY c.average_balance DESC
LIMIT 10;

#9.We are now looking for the average balance of all the customers in our data.
SELECT round(avg(c.average_balance),2) as avg_balance_all
FROM credit_card_data c;
#The avg balance for all customer is 940,52.

#10.Next we will use simple group by to check the properties of some of the categorical variables in our data. 
#Wherever average_balance mentioned, we are taking the average of the column average_balance.
#10.A - Average balance of the customers grouped by Income Level
SELECT c.income_level, round(avg(c.average_balance),2) as avg_balance
FROM credit_card_data c
GROUP BY c.income_level
ORDER BY avg_balance DESC;
#The highest avg balance is at the 'high'income level.

#10.B - Average balance of the customers grouped by number_of_bank_accounts_open 
SELECT c.num_bank_accounts_open, round(avg(c.average_balance),2) as avg_balance
FROM credit_card_data c
GROUP BY c.num_bank_accounts_open
ORDER BY avg_balance DESC;
#The highest avg balance have the customers, who have 3 bank accounts.

#10.C - Average number of credit cards held by customers for each of the credit card ratings
SELECT c.credit_rating, round(avg(c.num_credit_cards_held),2) as avg_num_of_credit_cards
FROM credit_card_data c
GROUP BY c.credit_rating
ORDER BY avg_num_of_credit_cards DESC;
#The customers with a medium credit rating have in avergage the most credit cards. However there is just a very small difference between credit levels.

#10.D - Potential correlation between the columns credit_cards_held and number_of_bank_accounts_open
SELECT c.num_bank_accounts_open, round(avg(c.num_credit_cards_held),2) as avg_num_of_credit_cards
FROM credit_card_data c
GROUP BY c.num_bank_accounts_open
ORDER BY num_bank_accounts_open DESC;
#When we look at the avg number of credit cards held by the number of open bank accounts, we dont see a correlation.
#The people with more bank accounts tend to have slidly more credit cards on average, but this is not strong.

SELECT c.num_bank_accounts_open, sum(c.num_credit_cards_held) as sum_of_credit_cards
FROM credit_card_data c
GROUP BY c.num_bank_accounts_open
ORDER BY c.num_bank_accounts_open DESC;
#When we look at the sum of all credit cards per number of accounts we see that the customers with 1 bank account have the most credit cards together.
#However this does not really tell us much, as it could be that there are just many more customers with just 1 bank account compared to customers with 3 bank accounts.

SELECT c.num_credit_cards_held, round(avg(c.num_bank_accounts_open),2) as avg_num_of_bank_accounts
FROM credit_card_data c
GROUP BY c.num_credit_cards_held
ORDER BY c.num_credit_cards_held DESC;
#Here we get the proof that there is indeed no real/string correlation between the amount of credit cards and amount of bank accounts.
#We see a pattern where customers with 2 or 3 credit cards have the least avg amount of bank accounts and the ones with 4 cards the most accounts.

#11. We are only interested in the customers with the following properties:
#Credit rating medium or high
#Credit cards held 2 or less
#Owns their own home
#Household size 3 or more
#For the rest of the things, they are not too concerned.
#Can you filter the customers who accepted the offers here?

SELECT c.customer_number
FROM credit_card_data c
WHERE c.credit_rating IN('medium','high') AND c.num_credit_cards_held <= 2 AND c.own_your_home = 'yes' AND c.household_size >= 3 AND c.offer_accepted = 'yes';
#We have 167 customers with the desired properties who accepted the credi card offer.

#12.We want to find out the list of customers whose average balance is less than the average balance of all the customers in the database.
SELECT c.customer_number, c.average_balance
FROM credit_card_data c
WHERE c.average_balance < (
	SELECT round(avg(c.average_balance),2)
	FROM credit_card_data c) 
ORDER BY c.average_balance DESC;
#Here we see the list of all requested customers and their avg balance ordered by the highest avg balance.

SELECT count(c.customer_number)
FROM credit_card_data c
WHERE c.average_balance < (
	SELECT round(avg(c.average_balance),2)
	FROM credit_card_data c) 
ORDER BY c.average_balance DESC;
#There are 7001 customers, whos avg balance is lower then the avg balance of all customers in the data set.

#13.Since this is something that the senior management is regularly interested in, we will create a view of the same query.
CREATE VIEW customers_with_lower_avg_balance AS
SELECT c.customer_number, c.average_balance
FROM credit_card_data c
WHERE c.average_balance < (
	SELECT round(avg(c.average_balance),2)
	FROM credit_card_data c) 
ORDER BY c.average_balance DESC;
#We are checking if it worked by looking at the schema-views. And it did :)

#14.What is the number of people who accepted the offer vs number of people who did not?
SELECT count(c.offer_accepted) as amount
FROM credit_card_data c
GROUP BY c.offer_accepted;
#Here we see that one of the groups is much larger then the other.

SELECT count(c.offer_accepted) as amount_yes
FROM credit_card_data c
WHERE c.offer_accepted = 'yes';
#With this we get to see which number accounts for which group.
#There are 1021 customers who accepted the offer and  16955 who declined it.

#15.Your managers are more interested in customers with a credit rating of high or medium. Here is difference in average balances of the customers with high credit card rating and low credit card rating:
SELECT c.credit_rating, round(avg(c.average_balance),2) 
FROM credit_card_data c
GROUP BY c.credit_rating;

SELECT
	(SELECT round(avg(c.average_balance),2) 
		FROM credit_card_data c
		WHERE c.credit_rating = 'High') - 
     (SELECT round(avg(c.average_balance),2) 
		FROM credit_card_data c
		WHERE c.credit_rating = 'Low') as difference
FROM credit_card_data c
LIMIT 1;
#The difference between the avg balance for all customers with a credit rating high or low is 4.05

#16.Lets see which types of communication were used and with how many customers:
SELECT c.mailer_type, count(c.customer_number)
FROM credit_card_data c
GROUP BY c.mailer_type;
#All types have been used. Letter was used for 8842 customers and postcard for a few more, 9134.

#17.At last we will provide the details of the customer that has the 11th least Q1_balance in the database:
SELECT *
FROM credit_card_data c
ORDER BY c.q1_balance ASC
LIMIT 10,1;


