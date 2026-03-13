# Order Management using Joins

This project demonstrates a simple **Order Management System** using **SQL Joins, Subqueries, and ORDER BY**.
It simulates how customer orders are stored and retrieved in **e-commerce or retail systems**.

The system combines data from multiple tables to display **customer order history** and perform analytical queries.

---

## 📌 Features

* Create and manage **Customers, Products, and Orders tables**
* Display **customer order history using JOIN queries**
* Use **ORDER BY** to sort order records
* Use **subqueries** to find:

  * Highest value order
  * Most active customer
* Simple **HTML + CSS layout** for displaying results

---

## 🧰 Technologies Used

* **SQL (MySQL)** – Database creation and queries
* **HTML5** – Page structure
* **CSS3** – Layout and styling

---

## 📂 Project Structure

```text
Task-4-Order-Management/
│
├── index.html      # Order history display page
├── style.css       # Styling for layout
└── database.sql    # Database tables and queries
```

---

## 🗄 Database Tables

### 1️⃣ Customers

Stores customer information.

| Column      | Description                 |
| ----------- | --------------------------- |
| customer_id | Unique ID for each customer |
| name        | Customer name               |
| email       | Customer email              |

### 2️⃣ Products

Stores product details.

| Column       | Description         |
| ------------ | ------------------- |
| product_id   | Unique product ID   |
| product_name | Name of the product |
| price        | Product price       |

### 3️⃣ Orders

Stores customer order records.

| Column      | Description                |
| ----------- | -------------------------- |
| order_id    | Unique order ID            |
| customer_id | Reference to customer      |
| product_id  | Reference to product       |
| quantity    | Number of products ordered |
| order_date  | Date of order              |

---

## 🔗 SQL Concepts Used

### JOIN Query

Combines **Customers, Orders, and Products** tables to display order history.

### ORDER BY

Sorts order records based on **date or value**.

### Subqueries

Used to calculate:

* **Highest Value Order**
* **Most Active Customer**

---

## ▶️ How to Run the Project

1. Open **MySQL / phpMyAdmin**
2. Import the **database.sql** file
3. Run the JOIN and subquery statements
4. Open **index.html** in a browser to view the layout

---

## 📊 Example Use Case

This system demonstrates how **online stores or retail platforms** track and analyze customer orders by:

* Linking customer and product data
* Identifying top customers
* Finding high-value orders

---

## 🚀 Future Enhancements

* Connect HTML page with database dynamically
* Add **order search and filtering**
* Display **sales analytics dashboard**
* Implement **product revenue reports**
* Create a **complete e-commerce admin panel**

---

## 👨‍💻 Author

**Done by KIRAN AKKALURI**

---

## 📜 License

This project is created for **educational and learning purposes**.
