 -- Understanding the attributes
 SELECt *
 FROM fiddy_cent.transactions;

 -- What is the total money_in in the table?

 SELECT SUM(money_in)
 FROM fiddy_cent.transactions;

  -- What is the total money_out in the table?

 SELECT SUM(money_out)
 FROM fiddy_cent.transactions;

 -- How many money_in transactions are in this table?

 SELECT COUNT(money_in)
 FROM fiddy_cent.transactions;
 
-- How many money_in transactions are in this table where ‘BIT’ is the currency
 SELECT COUNT(money_in)
 FROM fiddy_cent.transactions
 WHERE currency = 'BIT';

-- What was the largest transaction in this whole table

-- money_in
SELECT MAX(money_in)
FROM fiddy_cent.transactions;

-- money_out
SELECT MAX(money_out)
FROM fiddy_cent.transactions;

-- What is the average money_in in the table for the currency Ethereum (‘ETH’)?

SELECT AVG(money_in)
FROM fiddy_cent.transactions
WHERE currency = 'ETH';

-- Ledger for the different dates.

SELECT date, AVG(money_in), AVG(money_out)
FROM fiddy_cent.transactions
GROUP BY date;

-- rounding the values
SELECT date, ROUND(AVG(money_in),2) AS 'Average Buy', ROUND(AVG(money_out),2) AS 'Average Sell'
FROM fiddy_cent.transactions
GROUP BY date;


