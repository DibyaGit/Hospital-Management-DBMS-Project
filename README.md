````markdown
# 🏥 Hospital Management System (HMS)

## 📌 Project Overview

The **Hospital Management System (HMS)** is an enterprise-grade database management project designed to manage and streamline the core operations of a modern healthcare facility.

The system focuses on:

- Efficient patient and doctor management
- Appointment scheduling
- Treatment tracking
- Billing and payment handling
- Data integrity and security
- Advanced SQL reporting and automation

The database design follows **Third Normal Form (3NF)** principles to minimize redundancy and maintain high data consistency.

---

# 🚀 Key Features

## 📂 Master Data Management

Centralized storage and management for:

- Patients
- Doctors
- Appointments
- Treatments
- Billing Records

---

## 🔒 Data Integrity & Constraints

Implemented using:

- `PRIMARY KEY`
- `FOREIGN KEY`
- `NOT NULL`
- `UNIQUE`
- `CHECK` Constraints

These ensure reliable and validated data across the system.

---

## ⚡ Performance Optimization

- Non-clustered indexes
- Optimized joins
- Efficient query execution plans

Designed for fast retrieval of large datasets.

---

# 🤖 Automation Features

## 🧮 Functions

Scalar-valued functions used for:

- Real-time billing calculations
- Revenue analysis
- Patient payment summaries

---

## 🔔 Triggers

Automated triggers for:

- Appointment audit logging
- Activity tracking
- Data change monitoring

---

# 🔐 Security & Reliability

## 🛡️ DCL (Data Control Language)

Simulated role-based access control using:

```sql
GRANT
REVOKE
````

---

## 🔄 TCL (Transaction Control Language)

Transaction safety implemented using:

```sql
COMMIT
ROLLBACK
```

Ensures secure execution of critical database operations.

---

# 📁 Repository Structure

```text
Hospital-Management-DBMS-Project/
│
├── ERD/                  # Database schema & ER diagrams
├── SQL/                  # All SQL scripts
│   ├── ddl_scripts.sql
│   ├── dml_scripts.sql
│   ├── views.sql
│   ├── functions.sql
│   ├── triggers.sql
│   ├── queries.sql
│   └── transaction_demo.sql
│
├── Documentation/        # Reports & normalization documents
├── Output/               # Query outputs & reports
└── README.md
```

---

# 🛠️ Execution Guide

Execute the SQL files in the following order:

## 1️⃣ Create Database Structure

Run:

```sql
ddl_scripts.sql
```

Creates:

* Tables
* Constraints
* Relationships

---

## 2️⃣ Insert Sample Data

Run:

```sql
dml_scripts.sql
```

Populates the database with demo records.

---

## 3️⃣ Create Views & Indexes

Run:

```sql
views.sql
```

Adds:

* Reporting views
* Performance indexes

---

## 4️⃣ Deploy Functions

Run:

```sql
functions.sql
```

Creates reusable SQL functions.

---

## 5️⃣ Activate Triggers

Run:

```sql
triggers.sql
```

Enables automated logging triggers.

---

## 6️⃣ Run Analytical Queries

Run:

```sql
queries.sql
```

Contains 10+ advanced SQL queries for analysis and reporting.

---

## 7️⃣ Test Transactions

Run:

```sql
transaction_demo.sql
```

Demonstrates transaction safety using rollback and commit operations.

---

# 📊 Sample Reporting

## 🎯 Objective

Calculate the total amount paid by a patient.

---

## SQL Query

```sql
SELECT
    FirstName,
    LastName,
    dbo.fn_GetPatientTotalPaid(1) AS TotalMoneyPaid
FROM Patients
WHERE PatientID = 1;
```

---

## ✅ Output

| FirstName | LastName | TotalMoneyPaid |
| --------- | -------- | -------------- |
| John      | Doe      | 150.00         |

---

# 🧠 Advanced Concepts Used

* Database Normalization (3NF)
* Joins
* Aggregate Functions
* Views
* Indexing
* Stored Functions
* Triggers
* Transactions
* Role-Based Access Simulation
* Query Optimization

---

# 💻 Tech Stack

| Technology           | Used For                |
| -------------------- | ----------------------- |
| Microsoft SQL Server | Database Management     |
| T-SQL                | Query Language          |
| SSMS                 | Development Environment |
| GitHub               | Version Control         |

---

# 📚 Learning Outcomes

This project demonstrates practical understanding of:

* Relational Database Design
* SQL Development
* Data Integrity Management
* Query Optimization
* Transaction Handling
* Enterprise-Level Database Concepts

---

# 👨‍💻 Developed By

Developed as part of the **Database Module Capstone Project**.

---


