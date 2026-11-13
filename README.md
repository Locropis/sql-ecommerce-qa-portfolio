# SQL QA Portfolio - E-commerce Verification

Simple portfolio project demonstrating basic database verification skills for a Junior QA role. 
The goal is to test data integrity, check table relations, and find negative data anomalies in an e-commerce database.

## Database Schema
* **klienci** - customer data (id, name, email)
* **produkty** - product catalog & inventory (id, name, price, stock)
* **zamowienia** - order details connected via Foreign Key (id, customer_id, amount, status)

## SQL Test Cases Included (`queries.sql`)
1. **VIP Orders Check:** INNER JOIN between customers and orders to filter orders over 500 PLN, sorted descending.
2. **Paid Orders Report:** Filtering finalized orders by status.
3. **Negative Test Case:** Finding data anomalies (orders with negative or zero amounts).
4. **Inventory Check:** Finding products with low stock (less than 5 items) sorted ascending.
