# Product Sales Analysis

This repository contains SQL queries to analyze product sales data for a store. The main goals of this analysis are:
1. To calculate the total sales amount and the number of sales for each product per year.
2. To identify the product with the highest total sales amount.

### Table Structures

# Products Table
- **ProductID** (int, Primary Key): Unique ID of the product.
- **ProductName** (nvarchar(100)): Name of the product.
- **Price** (decimal(10,2)): Price of the product.

# Sales Table
- **SaleID** (int, Primary Key): Unique ID of the sale.
- **ProductID** (int, Foreign Key): ID of the product sold.
- **Quantity** (int): Quantity sold.
- **SaleDate** (datetime): Date of the sale.

# SQL Queries

- **Query 1**: Calculate the total sales amount and the number of sales for each product per year.
- **Query 2**: Find the product with the highest total sales amount.

# How to Use

1. Create the `Products` and `Sales` tables using the provided SQL scripts.
2. Insert the sample data into the tables.
3. Run the SQL queries in `queries.sql` to perform the sales analysis.
