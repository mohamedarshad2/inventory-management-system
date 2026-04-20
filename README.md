# Inventory Management System (MySQL)

## Overview

This project is a relational database system designed to manage inventory operations, including suppliers, products, shipments, customers, and orders. It demonstrates database design, data relationships, and SQL-based data analysis using MySQL.



## Features

* Structured relational database schema
* Management of suppliers, products, shipments, customers, and orders
* Primary key and foreign key constraints for data integrity
* Sample dataset for testing and demonstration
* SQL queries for reporting and analysis
* Basic role-based access control (RBAC) using MySQL users and roles



## Technologies Used

* MySQL
* SQL



## Project Structure


inventory-management-system-sql/
- schema.sql         # Database structure (tables, constraints)
- sample_data.sql    # Insert statements and data population
- queries.sql        # Analytical and reporting queries
- setup_users.sql    # (Optional) User roles and permissions
- README.md




## Database Schema

The system consists of the following main entities:

* **Supplier** → Stores supplier details
* **Product** → Stores product information and stock levels
* **Shipment** → Tracks shipment status and supplier relationships
* **Customer** → Stores customer details
* **Orders** → Manages customer orders and product relationships

Relationships are enforced using foreign keys to maintain referential integrity.



## Example Queries

The project includes SQL queries for:

* Counting total customers
* Counting total suppliers
* Counting total orders
* Reporting number of orders per customer
* Calculating total quantity of products ordered per customer



## How to Run

1. Open MySQL Workbench or any MySQL environment
2. Run the following files in order:

schema.sql
sample_data.sql
queries.sql

3. (Optional) To set up users and roles:

sql
setup_users.sql


> Note: Replace placeholder passwords in `setup_users.sql` before running.



## User Roles (Optional)

The project demonstrates basic Role-Based Access Control (RBAC):

* **Admin Role**

  * Full access to all databases and operations

* **User Role**

  * Limited access (SELECT, INSERT, UPDATE, DELETE) on the IMS database



## Learning Outcomes

This project demonstrates:

* Database schema design and normalization basics
* Use of primary and foreign keys
* Writing complex SQL queries with joins and subqueries
* Data integrity and relational modeling
* Basic database security using roles and privileges



## Future Improvements

* Normalize schema further to remove redundancy
* Improve relationship design (remove circular dependencies)
* Add triggers for automatic stock updates
* Implement stored procedures for order processing
* Create views for reporting dashboards



## Author
Mohamed Arshad

