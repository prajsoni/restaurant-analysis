-- Restaurant Order Analysis
-- Dataset: Kaggle - Restaurant Order Details
-- Database: PostgreSQL

-- Step 1: Create the table
DROP TABLE IF EXISTS orders;

Create table Orders(
 	order_id VARCHAR(10) Primary Key, 
	customer_name VARCHAR(100),
	restaurant_id INT,
	order_date TIMESTAMP,
	quantity INT,
	order_amount DECIMAL(10,2),
	payment_mode VARCHAR(50),
	delivery_time INT,
	rating_food INT,
	rating_delivery INT);

-- Step 2: Import data
-- Right click orders table in pgAdmin → Import/Export → select Orders.csv
-- Make sure Header is ON and Delimiter is comma

-- Step 3: Analysis Queries
SELECT * FROM orders LIMIT 5; --selecting all
Select Count(*) from orders;

--Which restaurant generates the most revenue?
Select restaurant_id, Sum(order_amount) As Revenue from orders
group by restaurant_id
Order by Revenue Desc;

--Which payment method is most popular?
Select Count(order_id) As total_orders, payment_mode from orders
Group by payment_mode
Order by total_orders Desc;

--Which restaurant has the fastest average delivery time?
Select Round(Avg(delivery_time), 2) As avg_delivery_time, restaurant_id from orders
Group by restaurant_id
order by avg_delivery_time;

--Which restaurant has the best food rating?
Select restaurant_id, Round(Avg(rating_food), 2) As Avg_food_rating  from orders
Group by restaurant_id
order by Avg_food_rating Desc;

--What is the busiest day for orders?
SELECT TO_CHAR(order_date, 'Day') AS day_name, COUNT(order_id) AS total_orders FROM orders
GROUP BY day_name
ORDER BY total_orders DESC;

--Which customers are most loyal?
Select customer_name, Count(order_id) AS total_orders from orders
group by customer_name
order by total_orders Desc
Limit 3;
