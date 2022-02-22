select * from customers;
-- 1) Find total number of customers
select count(*) from customers;

-- 2) Show transactions for Chennai market
select* from markets;  -- for Chennai market market_code = 'Mark001'
select * from transactions;
select * from transactions where market_code='Mark001';

-- 3) Find how many transactions done in Chennai market
select count(*) from transactions where market_code ="Mark001";

-- 4) Find how many transactions done in USD currnecy
select count(*) from sales.transactions where currency="USD";

-- 5) Show distrinct product codes that were sold in chennai
select distinct(product_code) from transactions where market_code='Mark001';

-- 6) Show transactions in year 2020 
select * from date;
select * from transactions inner join date on  transactions.order_date=date.date  where year='2020';

-- 7) Find how many transactions in year 2020 
select count(*) from transactions inner join date on  transactions.order_date=date.date  where year='2020';

-- 8)Show total revenue in year 2020,
select * from transactions;
SELECT SUM(sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 
and transactions.currency="INR\r" or transactions.currency="USD\r";

-- 9)Show total revenue in year 2020, January Month,
SELECT SUM(sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and  date.month_name="January" 
and (transactions.currency="INR\r" or transactions.currency="USD\r");

-- 10) list of different products sold in chennai
select distinct product_code from transactions where transactions.market_code="Mark001";