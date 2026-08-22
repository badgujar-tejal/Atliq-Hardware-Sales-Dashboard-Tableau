
-- ============ CUSTOMERS QUERIES =============
SELECT * FROM customers;
select distinct customer_type from customers;


-- ============ MARKETS QUERIES =============
select * from markets;
select distinct zone from markets;


-- ============ PRODUCTS QUERIES =============
select * from products;
select distinct product_type from products;


-- ============ TRANSACTION QUERIES =============
select * from transactions;
select count(*) from transactions;
select distinct currency from transactions;
-- # currency
-- 'INR'
-- # currency
-- 'INR\r'
select * from transactions where market_code = "Mark001";
select sum(transactions.sales_amount) from transactions where market_code = "Mark001";
select distinct product_code from transactions where market_code = "Mark001";
select * from transactions where currency = "USD";

-- getting year from date table query
select * from date;
select transactions.*, date.year from transactions inner join date ON transactions.order_date = date.date;
select transactions.*, date.year from transactions inner join date ON transactions.order_date = date.date where date.year = 2020;
select sum(transactions.sales_amount), date.year from transactions inner join date ON transactions.order_date = date.date where date.year = 2020;
select transactions.*,date.* from transactions inner join date ON transactions.order_date = date.date where date.year=2020 and date.month_name="January";
select sum(transactions.sales_amount) from transactions inner join date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January";
select sum(transactions.sales_amount) from transactions inner join date ON transactions.order_date = date.date where date.year = 2020 and transactions.market_code = "Mark001";