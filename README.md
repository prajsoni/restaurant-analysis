## Restaurant Order Analysis (PostgreSQL)

This project analyzes restaurant order data to evaluate revenue performance, customer behavior, delivery efficiency, and service quality. Using PostgreSQL and SQL queries, it uncovers insights that help improve operational performance and customer satisfaction in the food delivery industry.

---

## Project Overview

The dataset contains restaurant order records including customer details, order value, delivery time, payment methods, and ratings.

The analysis answers key business questions such as:

* Which restaurants generate the highest revenue
* Which payment methods are most popular
* Which restaurants deliver orders the fastest
* Which restaurants have the best food ratings
* What are the busiest days for orders
* Which customers are most loyal

This project demonstrates strong SQL fundamentals, including aggregation, grouping, sorting, and business-driven query design.

---

## Business Problem

Food delivery platforms handle large volumes of orders daily, but without proper analysis, it becomes difficult to identify performance gaps and opportunities for improvement.

This analysis aims to uncover:

* Which restaurants drive the most revenue
* How delivery performance varies across restaurants
* Customer preferences in payment methods
* Patterns in customer loyalty and ordering frequency
* Peak demand periods for better resource planning

---

## Dataset Structure

| Column          | Description                   |
| --------------- | ----------------------------- |
| order_id        | Unique order identifier       |
| customer_name   | Name of the customer          |
| restaurant_id   | Restaurant identifier         |
| order_date      | Date and time of the order    |
| quantity        | Number of items ordered       |
| order_amount    | Total order value             |
| payment_mode    | Payment method used           |
| delivery_time   | Delivery time in minutes      |
| rating_food     | Food rating given by customer |
| rating_delivery | Delivery service rating       |

---

## SQL Concepts Used

* Data Definition (CREATE TABLE)
* Data Import using pgAdmin
* Aggregations (SUM, COUNT, AVG)
* GROUP BY and ORDER BY
* Ranking via sorting and limiting results
* Date formatting using TO_CHAR()
* Business-driven analytical queries

---

## Key Insights

* Certain restaurants contribute significantly more revenue than others
* Digital payment methods are the most preferred by customers
* Delivery time varies across restaurants, highlighting operational differences
* High food ratings do not always correlate with faster delivery
* Orders peak on specific days of the week
* A small group of customers accounts for a high number of repeat orders

---

## Analytical Questions Answered

**1. Highest Revenue Restaurant**
Identifies restaurants generating the most revenue using SUM(order_amount).

**2. Most Popular Payment Method**
Counts total orders by payment type to find customer preferences.

**3. Fastest Delivery Restaurant**
Calculates average delivery time to identify operational efficiency.

**4. Best Food Rating**
Finds restaurants with the highest average food ratings.

**5. Busiest Day for Orders**
Analyzes order volume by day of the week.

**6. Most Loyal Customers**
Identifies customers with the highest number of orders.

---

## Project Structure

```
restaurant-order-analysis/
│
├── restaurant_order_analysis.sql   # Full SQL analysis
└── README.md                       # Project documentation
```

---

## Tools Used

* PostgreSQL
* SQL
* pgAdmin

---

## Author

**Prithvi Raj Soni**
MS Business Analytics — Montclair State University
LinkedIn | GitHub

